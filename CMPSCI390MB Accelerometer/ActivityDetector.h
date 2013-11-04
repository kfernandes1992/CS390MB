//
//  ActivityDetector.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>
#import <MessageUI/MessageUI.h>
#import "KMESmoothingFilter.h"
#import "StepDetector.h"
#import "ActivityFeatureExtractor.h"
#import "ReorientAxis.h"
#import "DecisionTree.h"
#import "ActivityReading.h"
#import "ActivityCellView.h"
#import "AccelerometerCellView.h"
#import "XFFT3CellView.h"
#import "SpeedMeanCellView.h"

@interface ActivityDetector : NSObject

@property(strong, nonatomic) CMMotionManager *motionManager;
@property(nonatomic, strong) NSMutableArray *logArray;
@property (nonatomic, strong) NSMutableArray *readings;
@property (strong, nonatomic) KMESmoothingFilter *smoothingFilter;
@property (strong, nonatomic) StepDetector *stepDetector;
@property (nonatomic, assign) int steps;
@property(nonatomic, strong) ReorientAxis *reorientAxis;
@property(nonatomic, strong) ActivityFeatureExtractor *activityFeatureExtractor;
@property(nonatomic, strong) DecisionTree *decisionTree;
@property BOOL hasBeenPressed;

-(void)runTheBitch;

-(id)getStepDetectorCellView;
-(id)getActivityCellView;
-(id)getAccelerometerCellView;
-(id)getXFFT3CellView;
-(id)getSpeedMeanCellView;

@end