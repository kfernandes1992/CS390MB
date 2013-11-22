//
//  RecordAudioModalVCViewController.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "RecordAudioModalVCViewController.h"
#import <MessageUI/MessageUI.h>

@interface RecordAudioModalVCViewController ()

@end

@implementation RecordAudioModalVCViewController

-(void)startRecording:(id)sender{
    
}

-(void)stopRecording:(id)sender{
    //[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)emailData:(id)sender{
    NSLog(@"emailing data");
    NSDate *timeStamp = [[NSDate alloc] init];
    NSDateFormatter *dateFormater= [[NSDateFormatter alloc] init];
    
    NSString *emailTitle= [NSString stringWithFormat:@"Voice iOS Data %@",[dateFormater stringFromDate:timeStamp]];
    
    NSString *messageBody= [NSString stringWithFormat:@"Voice data from %@",[dateFormater stringFromDate:timeStamp]];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    [mc setMailComposeDelegate:self];
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];

}
-(IBAction)clearData:(id)sender{

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
