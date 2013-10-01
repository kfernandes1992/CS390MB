//
//  ViewController.m
//  CS390MB Accelerometer
//
//  Created by Erik Risinger, Kevin Fernandes, Marco Chiang on 9/12/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(void)arrayToFile:(NSMutableArray *) log;

@end

@implementation ViewController

@synthesize on;
@synthesize logArray;
@synthesize xLabel;
@synthesize yLabel;
@synthesize zLabel;
@synthesize toggleButton;
@synthesize motionManager;
@synthesize hasBeenPressed;
@synthesize stepCounterLabel;
@synthesize smoothingFilter;
@synthesize stepDetector;
@synthesize steps;

static const NSTimeInterval accelerationInterval= .1;

-(IBAction)buttonPress{
    hasBeenPressed = TRUE;
    [self toggle];
}

-(void)toggle{
    on = !on;
    if(on){
        stepDetector=[[StepDetector alloc] init];
        steps = 0;
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
        [motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            //store values
//            NSDate *dateStamp = [NSDate date];
//            NSTimeInterval millisecondsSince1970 = [dateStamp timeIntervalSince1970] * 1000;
            NSString *xVal = [[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].x];
            NSString *yVal = [[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].y];
            NSString *zVal = [[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].z];
            
            //display values
            [xLabel setText: xVal];
            [yLabel setText: yVal];
            [zLabel setText: zVal];
//            [stepCounterLabel setText:[[NSString alloc] initWithFormat:@"%d", steps]];

        
            //filter out noise
            smoothingFilter=[[KMESmoothingFilter alloc]init];
            NSDecimalNumber *numX= [[NSDecimalNumber alloc] initWithInt:[xVal intValue]];
            NSDecimalNumber *numY= [[NSDecimalNumber alloc]initWithInt:[yVal intValue]];
            NSDecimalNumber *numZ=[[NSDecimalNumber alloc] initWithInt:[zVal intValue]];
            NSLog(@"%@, %@, %@", numX, numY, numZ);
            NSArray *sendArray = [[NSArray alloc] initWithObjects:numX, numY, numZ, nil];
//            NSArray *filteredData= [smoothingFilter getFilteredValuesOfXValue:numX ofYValue:numY ofZValue:numZ];
            
            //detect steps
            if([stepDetector detectStepsOnValues:sendArray]){
                steps++;
            }
            
            //update UI
            [stepCounterLabel setText:[[NSString alloc] initWithFormat:@"%d", steps]];
            
            /*//log values
            [logArray addObject:[[NSString alloc] initWithFormat:@"%f,%@,%@,%@\n",
                                 millisecondsSince1970,
                                 xVal,
                                 yVal,
                                 zVal]];
            
            
            
            //periodically log and refresh array. May need a new thread
            if([logArray count] >=1000){
               [self arrayToFile:logArray];
            }*/
            
        }];
    }
    
    else{
        //reset labels, kill updates
        [motionManager stopAccelerometerUpdates];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
        xLabel.text = @"X";
        yLabel.text = @"Y";
        zLabel.text = @"Z";

        
        //write array to file
        
//        if ([logArray count] > 0) {
//            [self arrayToFile:logArray];
//        }
        
       // [self emailFile];
    }
}

-(void)arrayToFile:(NSMutableArray *) log{
    
    
    // create a filePath with the name accelerometerlog.csv
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"filteredaccelerometerlog.csv"];
    NSURL *filePath= [[NSURL alloc] initWithString:fp];
    
    
    //from the array of strings, create one big string
    NSMutableString *writeString = [NSMutableString stringWithCapacity:0];
    for(NSMutableString *s in log){
        [writeString appendString: s];
    }
    
///TO DO: ensure that file is not being overwritten every 1000th time

    [writeString writeToURL:filePath atomically:FALSE encoding:NSUTF8StringEncoding error:NULL];
}


-(IBAction)emailFile{
    
    //find the accelerometer file
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"filteredaccelerometerlog.csv"];
    NSURL *filePath= [[NSURL alloc] initWithString:fp];

    
    //get the data from the file
    
    NSData *fileData = [NSData dataWithContentsOfURL:filePath];
    
    //set email parameters
    NSString *emailTitle = @"Filtered Accelerometer Data .csv File";
    NSArray *toRecipents = [NSArray arrayWithObject:@"kevinf@umass.edu"];
    
    
    //create email VC
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setToRecipients:toRecipents];
    [mc addAttachmentData:fileData mimeType:@"text/html" fileName:@"Filtered Accelerometer Data .csv File"];
    
    //present VC
    [self presentViewController:mc animated:TRUE completion:NULL];
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error{
    [self dismissViewControllerAnimated:TRUE completion:NULL];
};

-(BOOL)shouldAutorotate{
    return NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    on = TRUE;
    hasBeenPressed = FALSE;
    logArray = [[NSMutableArray alloc] init];
    motionManager= [[CMMotionManager alloc]init];
    steps = 0;
    
    if ([motionManager isAccelerometerAvailable] == YES) {
        [motionManager setAccelerometerUpdateInterval:accelerationInterval];
        
    }
    
    [self toggle];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
