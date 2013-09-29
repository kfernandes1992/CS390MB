//
//  KMESmoothingFilter.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMESmoothingFilter : NSObject

@property (nonatomic, strong) NSNumber *SMOOTH_FACTOR;
@property (nonatomic, strong) NSMutableArray *expectedValue;
@property (nonatomic, strong) NSNumber *INVALID;
@property (nonatomic, strong) NSNumber *NUM_ACCEL_FIELDS;
@property (nonatomic, strong) NSNumber *X_INDEX;
@property (nonatomic, strong) NSNumber *Y_INDEX;
@property (nonatomic, strong) NSNumber *Z_INDEX;

-(NSMutableArray*) getFilteredValuesOfXValue: (NSNumber *) accX ofYValue:(NSNumber *) accY ofZValue:(NSNumber *) accZ;

-(NSNumber*) getSmoothedValueOfNumber: (NSNumber*) sample withFilterIndex: (NSNumber*) index;


@end
