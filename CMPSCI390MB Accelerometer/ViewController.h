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

@interface ViewController : UIViewController <UIAccelerometerDelegate, UIActionSheetDelegate, MFMailComposeViewControllerDelegate>

-(IBAction)toggle;

@property(nonatomic, assign) BOOL on;
@property(nonatomic, strong) NSMutableArray *logArray;
@property(nonatomic, strong) IBOutlet UILabel *xLabel;
@property(nonatomic, strong) IBOutlet UILabel *yLabel;
@property(nonatomic, strong) IBOutlet UILabel *zLabel;
@property(nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (weak, nonatomic) IBOutlet UIButton *emailButton;

@property(strong, nonatomic) CMMotionManager *motionManager;


-(IBAction)emailFileWithFilePath:(NSString*) filePath;

@end
