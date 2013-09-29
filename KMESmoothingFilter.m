//
//  KMESmoothingFilter.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "KMESmoothingFilter.h"

@implementation KMESmoothingFilter

@synthesize X_INDEX;
@synthesize Y_INDEX;
@synthesize Z_INDEX;

-(NSMutableArray*) getFilteredValuesOfXValue:(NSNumber*) accX ofYValue:(NSNumber *) accY ofZValue:(NSNumber *) accZ{
    
    NSNumber *xVal = [self getSmoothedValueOfNumber:accX withFilterIndex:X_INDEX];
    NSNumber *yVal = [self getSmoothedValueOfNumber:accY withFilterIndex:Y_INDEX];
    NSNumber *zVal = [self getSmoothedValueOfNumber:accZ withFilterIndex:Z_INDEX];
    
    NSMutableArray *result = [[NSMutableArray alloc] initWithObjects:xVal, yVal, zVal, nil];
    
    return result;
    
}

@end
