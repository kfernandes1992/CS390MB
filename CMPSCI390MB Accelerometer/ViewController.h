//
//  ViewController.h
//  CS390MB Accelerometer
//
//  Created by Erik Risinger, Kevin Fernandes, Marco Chiang on 9/12/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>
#import <MessageUI/MessageUI.h>
#import "KMESmoothingFilter.h"
#import "StepDetector.h"

@interface ViewController : UIViewController <UIAccelerometerDelegate, UIActionSheetDelegate, MFMailComposeViewControllerDelegate>

-(IBAction)buttonPress;
-(IBAction)toggle;


@property(nonatomic, assign) BOOL on;
@property(nonatomic, strong) NSMutableArray *logArray;
@property(nonatomic, strong) IBOutlet UILabel *xLabel;
@property(nonatomic, strong) IBOutlet UILabel *yLabel;
@property(nonatomic, strong) IBOutlet UILabel *zLabel;
@property(nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (weak, nonatomic) IBOutlet UILabel *stepCounterLabel;
@property (strong, nonatomic) KMESmoothingFilter *smoothingFilter;
@property (strong, nonatomic) StepDetector *stepDetector;

@property(strong, nonatomic) CMMotionManager *motionManager;
@property BOOL hasBeenPressed;


-(IBAction)emailFile;

@end
