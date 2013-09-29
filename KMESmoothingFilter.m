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
        SMOOTH_FACTOR= [[NSNumber alloc] initWithInt:2];
        INVALID= [[NSNumber alloc]initWithInt:-1];
        NUM_ACCEL_FIELDS=[[NSNumber alloc]initWithInt:3];
        X_INDEX=[[NSNumber alloc] initWithInt:0];
        Y_INDEX=[[NSNumber alloc] initWithInt:1];
        Z_INDEX=[[NSNumber alloc] initWithInt:2];
        expectedValue=NULL;
    }
    return self;
}

-(NSNumber*) getSmoothedValueOfNumber:(NSNumber *)sample withFilterIndex:(NSNumber *)filterIndex{
    int index=[filterIndex intValue];
    if((index> [expectedValue count]) || index<0){
        return NULL;
    }
    
    else{
        double numInArray=[[expectedValue objectAtIndex:index] doubleValue];
        double sampleDoubleValue=sample.doubleValue;
        int smoothFactor= [SMOOTH_FACTOR intValue];
        
        
        double newNum= numInArray+ ((sampleDoubleValue-numInArray)/smoothFactor);
        
        [expectedValue setObject:[[NSNumber alloc] initWithDouble:newNum] atIndexedSubscript:index];
        return [expectedValue objectAtIndex:index];
    }
}

-(NSMutableArray*) getFilteredValuesOfXValue:(NSNumber*) accX ofYValue:(NSNumber *) accY ofZValue:(NSNumber *) accZ{
    
    NSNumber *xVal = [self getSmoothedValueOfNumber:accX withFilterIndex:X_INDEX];
    NSNumber *yVal = [self getSmoothedValueOfNumber:accY withFilterIndex:Y_INDEX];
    NSNumber *zVal = [self getSmoothedValueOfNumber:accZ withFilterIndex:Z_INDEX];
    
    NSMutableArray *result = [[NSMutableArray alloc] initWithObjects:xVal, yVal, zVal, nil];
    
    return result;
}


@end
