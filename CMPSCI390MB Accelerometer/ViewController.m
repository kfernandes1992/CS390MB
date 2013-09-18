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
//@synthesize manager;

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
            
//            NSLog(@"Logged %f, %@, %@, %@", secondsSince1970, xVal, yVal, zVal);
        }];
    }
    
    else{
        //reset labels, kill updates
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
        xLabel.text = @"X";
        yLabel.text = @"Y";
        zLabel.text = @"Z";
        
        [motionManager stopAccelerometerUpdates];
        
        //do something with logged data
//        for(NSString *s in logArray){
//            NSLog(@"%@", s);
//            //[xLabel setText:[[NSString alloc] initWithString: s]];
//        }
        if ([logArray count] > 0) {
            [self arrayToFile:logArray];
        }
    }
}

-(void)arrayToFile:(NSMutableArray *) log{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"accelerometerlog.csv"];
    
    NSMutableString *writeString = [NSMutableString stringWithCapacity:0];
    for(NSMutableString *s in log){
        [writeString appendString: s];
    }
    NSLog(@"%@", writeString);
    
    [writeString writeToFile:filePath atomically:TRUE encoding:NSUTF8StringEncoding error:NULL];
    
    [self emailFileWithFilePath:filePath];
}


-(IBAction)emailFileWithFilePath:(NSString*) filePath{
    NSLog(@"Email File Run");
    
    NSString *emailTitle = @"Accelerometer Data CSV";
    NSString *messageBody = @"Hey, check this out!";
    NSArray *toRecipents = [NSArray arrayWithObject:@"kevinf@umass.edu"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
   // Get the resource path and read the file using NSData
    NSString *filename=@"accelerometerlog.csv";
    NSString *mimeType=@"text/csv";
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    [mc addAttachmentData:fileData mimeType:mimeType fileName:filename];
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
