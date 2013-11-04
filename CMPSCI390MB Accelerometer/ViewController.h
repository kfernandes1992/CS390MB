//
//  ViewController.h
//  CS390MB Accelerometer
//
//  Created by Erik Risinger, Kevin Fernandes, Marco Chiang on 9/12/13.
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
#import "CorePlot-CocoaTouch.h"

@interface ViewController : UIViewController <UIAccelerometerDelegate, UIActionSheetDelegate, MFMailComposeViewControllerDelegate, CPTPlotDataSource>
{
    CPTGraph *graph;
}
-(IBAction)buttonPress:(UIButton*) button;
-(IBAction)togglewithButton:(UIButton *) button;


@property(nonatomic, strong) NSMutableArray *logArray;
@property(nonatomic, strong) IBOutlet UILabel *xLabel;
@property(nonatomic, strong) IBOutlet UILabel *yLabel;
@property(nonatomic, strong) IBOutlet UILabel *zLabel;
@property(nonatomic, strong) IBOutlet UILabel *activityLabel;
@property(nonatomic, strong) IBOutlet UIButton *walkButton;
@property(nonatomic, strong) IBOutlet UIButton  *runButton;
@property (nonatomic, strong) IBOutlet UIButton *sitButton;
@property (weak, nonatomic) IBOutlet UILabel *stepCounterLabel;
@property (strong, nonatomic) KMESmoothingFilter *smoothingFilter;
@property (strong, nonatomic) StepDetector *stepDetector;
@property (nonatomic, strong) NSMutableArray *readings;
@property (nonatomic, assign) int steps;

@property(strong, nonatomic) CMMotionManager *motionManager;
@property(nonatomic, strong) ActivityFeatureExtractor *activityFeatureExtractor;
@property(nonatomic, strong) DecisionTree *decisionTree;
@property(nonatomic, strong) ReorientAxis *reorientAxis;
@property BOOL hasBeenPressed;


-(IBAction)emailFile;

@end

@protocol CPTPlotDataSource <NSObject>

-(NSUInteger)numberOfRecords;

@optional

-(NSArray *)numbersForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
          recordIndexRange:(NSRange)indexRange;

-(NSNumber *)numberForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
               recordIndex:(NSUInteger)index;

-(NSRange)recordIndexRangeForPlot:(CPTPlot *)plot
                        plotRange:(CPTPlotRange *)plotRect;

@end