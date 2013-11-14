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
#import "StepDetectorCellView.h"

//@class StepDetectorCellView;
//@class AccelerometerCellView;
//@class XFFT3CellView;


@interface ActivityDetector : NSObject

@property(strong, nonatomic) CMMotionManager *motionManager;
@property(nonatomic, strong) NSMutableArray *logArray;
@property (nonatomic, strong) NSMutableArray *readings;
@property (strong, nonatomic) KMESmoothingFilter *smoothingFilter;
@property (strong, nonatomic) StepDetector *stepDetector;
@property int steps;
@property(nonatomic, strong) ReorientAxis *reorientAxis;
@property(nonatomic, strong) ActivityFeatureExtractor *activityFeatureExtractor;
@property(nonatomic, strong) DecisionTree *decisionTree;
@property BOOL hasBeenPressed;

@property (nonatomic, strong) StepDetectorCellView *stepCellView;
@property (nonatomic, strong) ActivityCellView *activityCellView;
@property (nonatomic, strong) AccelerometerCellView *accelerometerCellView;
@property (nonatomic, strong) XFFT3CellView *xFFT3CellView;
@property (nonatomic, strong) SpeedMeanCellView *speedMeanCellView;

//@property double maxX;
//@property double minX;
//@property double maxY;
//@property double minY;
//@property double maxZ;
//@property double minZ;
@property double maxAccelerometerValue;
@property double minAccelerometerValue;
@property double maxXFFT3;
@property double minXFFT3;
@property double maxSpeedMean;
@property double minSpeedMean;

-(void)runTheBitch;
-(int)getSteps;

//-(id)getStepDetectorCellView;
//-(id)getActivityCellView;
//-(id)getAccelerometerCellView;
//-(id)getXFFT3CellView;
//-(id)getSpeedMeanCellView;

@end