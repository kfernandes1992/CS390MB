//
//  RecordAudioModalVCViewController.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface RecordAudioModalVCViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property(nonatomic, strong) IBOutlet UIButton *stopButton;
@property(nonatomic, strong) IBOutlet UIButton *recordButton;

-(IBAction)stopRecording:(id)sender;
-(IBAction)startRecording:(id)sender;
-(IBAction)emailData:(id)sender;
-(IBAction)clearData:(id)sender;

@end
