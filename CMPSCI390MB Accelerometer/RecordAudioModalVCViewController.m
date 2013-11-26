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
    NSLog(@"button clicked");
    if (!audioRecorder.recording)
    {
        NSLog(@"recording");
        _stopButton.enabled = YES;
        NSLog(@"recording status: %hhd", [audioRecorder record]);
    }
}

-(void)stopRecording:(id)sender{
    //[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    _stopButton.enabled = NO;
    _recordButton.enabled = YES;
    if (audioRecorder.recording)
    {
        [audioRecorder stop];
    }
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
    NSData *fileData = [NSData dataWithContentsOfURL:audioRecorder.url];
    NSLog(@"Recorded File size: %i", [fileData length]);
    [mc addAttachmentData:fileData mimeType:@"audio/x-caf" fileName:@"sound.caf"];

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
    
    //_recordButton.enabled = NO;
    //_stopButton.enabled = NO;
    
    NSArray *dirPaths;
    NSString *docsDir;
    
    dirPaths = NSSearchPathForDirectoriesInDomains(
                                                   NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = [dirPaths objectAtIndex:0];
    NSString *soundFilePath = [docsDir
                               stringByAppendingPathComponent:@"sound.caf"];
    
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    
    NSLog(@"File Path: %@", [soundFileURL path]);
    
    NSDictionary *recordSetting = [NSDictionary dictionaryWithObjectsAndKeys:
                                   [NSNumber numberWithFloat: 44100.0],                 AVSampleRateKey,
                                   [NSNumber numberWithInt: kAudioFormatAppleLossless], AVFormatIDKey,
                                   [NSNumber numberWithInt: 1],                         AVNumberOfChannelsKey,
                                   [NSNumber numberWithInt: AVAudioQualityMax],         AVEncoderAudioQualityKey,
                                   nil];
    //[[NSMutableDictionary alloc] init];
    //[recordSetting setValue :[NSNumber numberWithInt:32]  forKey:AVLinearPCMBitDepthKey];
    //[recordSetting setValue :[NSNumber numberWithBool:NO] forKey:AVLinearPCMIsBigEndianKey];
    //[recordSetting setValue :[NSNumber numberWithBool:NO] forKey:AVLinearPCMIsFloatKey];
    
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryRecord error:NULL];
    
    NSError *error = nil;
    
    audioRecorder = [[AVAudioRecorder alloc]
                     initWithURL:soundFileURL
                     settings:recordSetting
                     error:&error];
    
    if (error)
    {
        NSLog(@"error: %@", [error localizedDescription]);
        
    } else {
        NSLog(@"Prepare to record");
        [audioRecorder prepareToRecord];
    }
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
