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

-(BOOL) detectStepsOnValues: (NSArray*) accelValues;
-(NSArray *)amplifyValues: (NSArray *) rawValues;
-(void)addToBuffer: (NSArray *) newVals;
-(NSDecimalNumber *)travelingMeanForAxis:(NSUInteger)axis;
-(NSDecimalNumber *)thresholdForAxis:(NSUInteger) axis;

@end