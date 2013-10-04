//
//  KMESmoothingFilter.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMESmoothingFilter : NSObject

@property (nonatomic, strong) NSDecimalNumber *SMOOTH_FACTOR;
@property (nonatomic, strong) NSMutableArray *expectedValue;
@property (nonatomic, strong) NSDecimalNumber *INVALID;
@property (nonatomic, strong) NSDecimalNumber *NUM_ACCEL_FIELDS;
@property (nonatomic, strong) NSDecimalNumber *X_INDEX;
@property (nonatomic, strong) NSDecimalNumber *Y_INDEX;
@property (nonatomic, strong) NSDecimalNumber *Z_INDEX;

-(NSArray*) getFilteredValuesOfXValue: (NSDecimalNumber *) accX ofYValue:(NSDecimalNumber *) accY ofZValue:(NSDecimalNumber *) accZ;

-(NSDecimalNumber*) getSmoothedValueOfNumber: (NSDecimalNumber*) sample withFilterIndex: (NSDecimalNumber*) index;


@end
