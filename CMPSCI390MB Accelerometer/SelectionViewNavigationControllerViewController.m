//
//  SelectionViewNavigationControllerViewController.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/6/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "SelectionViewNavigationControllerViewController.h"

@interface SelectionViewNavigationControllerViewController ()

@end

@implementation SelectionViewNavigationControllerViewController

//@synthesize controllerDelegate;
@synthesize tableViewController;
@synthesize doneButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//-(void)setControllerDelegate:(id<SelectionViewNavigationControllerDelegate>) cd
//{
//    self.controllerDelegate = cd;
//}

//-(IBAction)didFinishEditing:(id)sender
//{
////    [controllerDelegate didFinishEditing:sender];
//    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
//}

-(void)setDictionaryArray:(NSMutableArray *) dict{
    if([[self.viewControllers objectAtIndex:0] respondsToSelector:@selector(setDictionaryArray:)]){
        [[self.viewControllers objectAtIndex:0] performSelector:@selector(setDictionaryArray:) withObject:dict afterDelay:0];
    }
}

-(BOOL)shouldAutorotate{ return NO; }

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
