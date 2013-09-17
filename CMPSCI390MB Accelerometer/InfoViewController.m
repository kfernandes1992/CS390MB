//
//  InfoViewController.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 9/15/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize teamInfoLabel;
@synthesize titleInfoLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL)shouldAutorotate{
    return NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [titleInfoLabel setText:@"CMPSCI390MB\nAssignment 1"];
    [teamInfoLabel setText:@"Kevin Fernandes\nMarco Chiang\nErik Risinger\n"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
