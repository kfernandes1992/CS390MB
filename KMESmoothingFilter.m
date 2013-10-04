//
//  KMESmoothingFilter.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "KMESmoothingFilter.h"

@implementation KMESmoothingFilter

@synthesize SMOOTH_FACTOR, NUM_ACCEL_FIELDS,INVALID,X_INDEX,Y_INDEX,Z_INDEX,expectedValue;


-(KMESmoothingFilter*) init

{
    self = [super init];
    if (self) {
        SMOOTH_FACTOR= [[NSDecimalNumber alloc] initWithInt:9];
        INVALID= [[NSDecimalNumber alloc]initWithInt:-1];
        NUM_ACCEL_FIELDS=[[NSDecimalNumber alloc]initWithInt:3];
        X_INDEX=[[NSDecimalNumber alloc] initWithInt:0];
        Y_INDEX=[[NSDecimalNumber alloc] initWithInt:1];
        Z_INDEX=[[NSDecimalNumber alloc] initWithInt:2];
        expectedValue=NULL;
    }
    return self;
}

-(NSDecimalNumber*) getSmoothedValueOfNumber:(NSDecimalNumber *)sample withFilterIndex:(NSDecimalNumber *)filterIndex{
    int index=[filterIndex intValue];
    if((index> [expectedValue count]) || index<0){
        return NULL;
    }
    
    else{
        double numInArray=[[expectedValue objectAtIndex:index] doubleValue];
        double sampleDoubleValue=sample.doubleValue;
        int smoothFactor= [SMOOTH_FACTOR intValue];
        
        
        double newNum= numInArray+ ((sampleDoubleValue-numInArray)/smoothFactor);
        
        [expectedValue setObject:[[NSDecimalNumber alloc] initWithDouble:newNum] atIndexedSubscript:index];
        return [expectedValue objectAtIndex:index];
    }
}

-(NSArray*) getFilteredValuesOfXValue:(NSDecimalNumber*) accX ofYValue:(NSDecimalNumber *) accY ofZValue:(NSDecimalNumber *) accZ{
    
    NSDecimalNumber *xVal = [self getSmoothedValueOfNumber:accX withFilterIndex:X_INDEX];
    NSDecimalNumber *yVal = [self getSmoothedValueOfNumber:accY withFilterIndex:Y_INDEX];
    NSDecimalNumber *zVal = [self getSmoothedValueOfNumber:accZ withFilterIndex:Z_INDEX];
    
    NSArray *result = [[NSMutableArray alloc] initWithObjects:xVal, yVal, zVal, nil];
    
    return result;
}


@end
