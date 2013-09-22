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

static const NSTimeInterval accelerationInterval= .1;

-(void)toggle{
    on = !on;
    if(on){
        
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
        [motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            //store values
            NSDate *dateStamp = [NSDate date];
            NSTimeInterval secondsSince1970 = [dateStamp timeIntervalSince1970];
            NSString *xVal = [[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].x];
            NSString *yVal = [[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].y];
            NSString *zVal = [[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].z];
            
            //display values
            [xLabel setText: xVal];
            [yLabel setText: yVal];
            [zLabel setText: zVal];

            
            //log values
            [logArray addObject:[[NSString alloc] initWithFormat:@"%f,%@,%@,%@\n",
                                 secondsSince1970,
                                 xVal,
                                 yVal,
                                 zVal]];
            
            
            //periodically log and refresh array. May need a new thread
            if([logArray count] >=1000){
               [self arrayToFile:logArray]; 
            }
            
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
        
        if ([logArray count] > 0) {
            [self arrayToFile:logArray];
        }
        
        [self emailFile];
    }
}

-(void)arrayToFile:(NSMutableArray *) log{
    
    
    // create a filePath with the name accelerometerlog.csv
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"accelerometerlog.csv"];
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
    NSBundle *fileBundle= [[NSBundle alloc] init];
    NSString *fp=[fileBundle pathForResource:@"accelerometerlog" ofType:@".csv"];
    NSLog(@"fp: %@", fp);
    NSURL *filePath = [[NSURL alloc] initFileURLWithPath:fp];
    NSLog(@"Filepath: %@", filePath);
    
    //get the data from the file
    
    NSData *fileData = [NSData dataWithContentsOfURL:filePath];
    
    //set email parameters
    NSString *emailTitle = @"Accelerometer Data .csv File";
    NSArray *toRecipents = [NSArray arrayWithObject:@"kevinf@umass.edu"];
    
    
    //create email VC
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setToRecipients:toRecipents];
    [mc addAttachmentData:fileData mimeType:@"text/html" fileName:@"Accelerometer Data .csv File"];
    
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
    logArray = [[NSMutableArray alloc] init];
    motionManager= [[CMMotionManager alloc]init];
    
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
