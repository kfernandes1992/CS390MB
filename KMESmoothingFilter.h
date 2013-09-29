//
//  KMESmoothingFilter.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMESmoothingFilter : NSObject

@property (nonatomic, weak) NSNumber *SMOOTH_FACTOR;
@property (nonatomic, weak) NSArray *expectedValue;
@property (nonatomic, weak) NSNumber *INVALID;
@property (nonatomic, weak) NSNumber *NUM_ACCEL_FIELDS;
@property (nonatomic, weak) NSNumber *X_INDEX;
@property (nonatomic, weak) NSNumber *Y_INDEX;
@property (nonatomic, weak) NSNumber *Z_INDEX;

-(NSArray*) getFilteredValuesOfXValue: (NSNumber*) accX ofYValue:(NSNumber *) accY ofZValue:(NSNumber *) accZ;

-(NSNumber*) getSmoothedValueOfNumber: (NSNumber*) sample withFilterIndex: (NSNumber*) index;


@end
