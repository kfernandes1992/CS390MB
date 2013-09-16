//
//  ViewController.h
//  CS390MB Accelerometer
//
//  Created by Erik Risinger, Kevin Fernandes, Marco Chiang on 9/12/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController <UIAccelerometerDelegate>

-(IBAction)toggle;

@property(nonatomic, assign) BOOL on;
@property(nonatomic, weak) IBOutlet UILabel *xLabel;
@property(nonatomic, weak) IBOutlet UILabel *yLabel;
@property(nonatomic, weak) IBOutlet UILabel *zLabel;
@property(nonatomic, weak) IBOutlet UIButton *toggleButton;
//@property(nonatomic, weak) UIAccelerometer *accelerometer;

@property(strong, nonatomic) CMMotionManager *motionManager;

@end
