//
//  StepDetector.m
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "StepDetector.h"

@implementation StepDetector

@synthesize buffer;
@synthesize threshold;
@synthesize lastStep;

-(BOOL) detectStepsOnValues:(NSArray *)accelValues{
    NSTimeInterval timeSinceLastThresholdCrossing;
    NSArray *ampedValues = [self amplifyValues:accelValues];
    [self addToBuffer:ampedValues];
//    for(NSDecimalNumber *d in ampedValues){
//        if ([d doubleValue] > 500) {
//            return TRUE;
//        }
//    }

    for(int j = 0; j <= 2; j++){
        if([[ampedValues objectAtIndex:j] doubleValue] > [[self thresholdForAxis: j] doubleValue]){
            timeSinceLastThresholdCrossing = [lastStep timeIntervalSinceNow];
            if (timeSinceLastThresholdCrossing > 0.4) {
                return TRUE;
            }
            else{
                lastStep = [[NSDate alloc] init];
            }
        }
    }

    return FALSE;
}

-(NSArray *)amplifyValues: (NSArray *) rawValues{
    NSDecimalNumber *ten = [[NSDecimalNumber alloc] initWithDouble:10];
    NSDecimalNumber *newDecimal;
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    
    for (NSDecimalNumber *n in rawValues) {
        newDecimal = [n decimalNumberByMultiplyingBy:ten];
        newDecimal = [newDecimal decimalNumberByRaisingToPower:3];
        [tempArray addObject:newDecimal];
    }
    
    return tempArray;
}

-(void)addToBuffer: (NSArray *) newVals{
    if([buffer count] < 5){
        [buffer addObject:newVals];
    }
    else{
        [buffer removeObjectAtIndex:0];
        [buffer addObject:newVals];
    }
}


//x: 0,
//y: 1,
//z: 2
-(NSDecimalNumber *)travelingMeanForAxis:(NSUInteger)axis{
    double sum = 0.0;
    for(NSArray *a in buffer){
        sum += [[a objectAtIndex:axis] doubleValue];
    }
    
    return [[NSDecimalNumber alloc] initWithDouble:sum/[buffer count]];
}

-(NSDecimalNumber *)thresholdForAxis:(NSUInteger) axis{
    NSDecimalNumber *tempDouble = [self travelingMeanForAxis:axis];
    tempDouble = [tempDouble decimalNumberByAdding:[[NSDecimalNumber alloc] initWithDouble:threshold]];
    return tempDouble;
}

-(id) init{
    self = [super init];
    if(self){
        threshold = 200;
    }
    
    return self;
}

@end