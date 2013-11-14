//
//  RecordAudioModalVCViewController.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecordAudioModalVCViewController : UIViewController

@property(nonatomic, strong) IBOutlet UIButton *stopButton;
@property(nonatomic, strong) IBOutlet UIButton *recordButton;

-(IBAction)stopRecording:(id)sender;
-(IBAction)startRecording:(id)sender;

@end
