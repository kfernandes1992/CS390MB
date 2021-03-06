//
//  StepDetector.h
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepDetector : NSObject

@property(nonatomic, strong) NSMutableArray *buffer;
@property(nonatomic, assign) double threshold;
@property(nonatomic, strong) NSDate *lastStep;
@property(nonatomic, assign) double minTimeSinceLastStep;

-(BOOL) detectStepsOnValues: (NSArray*) accelValues;
-(NSArray *)amplifyValues: (NSArray *) rawValues;
-(NSArray *)squareValues:(NSArray *) rawValues;
-(NSArray *)cubeValues:(NSArray *) rawValues;
-(BOOL)addToBuffer: (NSArray *) newVals;
-(NSDecimalNumber *)travelingMeanForAxis:(NSUInteger)axis;
-(NSDecimalNumber *)thresholdForAxis:(NSUInteger) axis;

@end