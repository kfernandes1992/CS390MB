//
//  ViewController.m
//  CS390MB Accelerometer
//
//  Created by Erik Risinger, Kevin Fernandes, Marco Chiang on 9/12/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize on;
@synthesize xLabel;
@synthesize yLabel;
@synthesize zLabel;
@synthesize toggleButton;
//@synthesize accelerometer;
@synthesize motionManager;

static const NSTimeInterval accelerationInterval= .1;

-(void)toggle{
    on = !on;
    if(on){
        
        [motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            [xLabel setText:[[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].x]];
            [yLabel setText:[[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].y]];
            [zLabel setText:[[NSString alloc] initWithFormat:@"%f",[accelerometerData acceleration].z]];
        }];
        
        
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
    else{
        
        [motionManager stopAccelerometerUpdates];
        
        xLabel.text = @"X";
        yLabel.text = @"Y";
        zLabel.text = @"Z";
        
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    }
}

-(BOOL)shouldAutorotate{
    return NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    on = TRUE;
    [self toggle];
    
    motionManager= [[CMMotionManager alloc]init];
    
    if ([motionManager isAccelerometerAvailable] == YES) {
        [motionManager setAccelerometerUpdateInterval:accelerationInterval];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
