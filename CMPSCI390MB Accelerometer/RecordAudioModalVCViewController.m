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
    
    //set up email VC
    NSLog(@"emailing data");
    NSDate *timeStamp = [[NSDate alloc] init];
    NSDateFormatter *dateFormater= [[NSDateFormatter alloc] init];
    
    NSString *emailTitle= [NSString stringWithFormat:@"Voice iOS Data %@",[dateFormater stringFromDate:timeStamp]];
    
    NSString *messageBody= [NSString stringWithFormat:@"Voice data from %@",[dateFormater stringFromDate:timeStamp]];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    [mc setMailComposeDelegate:self];
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    
    
    //find and attach file
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"test.txt"];
    NSURL *filePath= [[NSURL alloc] initWithString:fp];
    NSData *fileData = [NSData dataWithContentsOfURL:filePath];
    [mc addAttachmentData:fileData mimeType:@"text/html" fileName:@"test.txt"];

    [self presentViewController:mc animated:TRUE completion:NULL];
    
    
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
    [self createDummyFile];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    switch (result)
    {
        case MFMailComposeResultCancelled:
        NSLog(@"Mail cancelled");
        break;
        case MFMailComposeResultSaved:
        NSLog(@"Mail saved");
        break;
        case MFMailComposeResultSent:
        NSLog(@"Mail sent");
        break;
        case MFMailComposeResultFailed:
        NSLog(@"Mail sent failure: %@", [error localizedDescription]);
        break;
        default:
        break;
    }
    [self dismissViewControllerAnimated:TRUE completion:NULL];
}

-(void) createDummyFile{
    // create a filePath with the name accelerometerlog.csv
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"test.txt"];
    NSURL *filePath= [[NSURL alloc] initWithString:fp];
    
    NSString *dummyText=@"Please work";
    [dummyText writeToURL:filePath atomically:FALSE encoding:NSUTF8StringEncoding error:NULL];
    }
@end
