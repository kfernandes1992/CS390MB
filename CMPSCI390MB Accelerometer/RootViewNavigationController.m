//
//  RootViewNavigationController.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/5/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "RootViewNavigationController.h"

@interface RootViewNavigationController ()

@end

@implementation RootViewNavigationController


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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
