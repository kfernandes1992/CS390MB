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
@synthesize minTimeSinceLastStep;

-(BOOL) detectStepsOnValues:(NSArray *)accelValues{
    NSTimeInterval timeSinceLastThresholdCrossing;
    NSArray *ampedValues = [self amplifyValues:accelValues];
    
    if ([self addToBuffer:ampedValues]){
//    for(NSDecimalNumber *d in ampedValues){
//        if ([d doubleValue] > 500) {
//            return TRUE;
//        }
//    }

        for(int j = 0; j <= 2; j++){
            if([[ampedValues objectAtIndex:j] doubleValue] > [[self thresholdForAxis: j] doubleValue]){
                timeSinceLastThresholdCrossing = [lastStep timeIntervalSinceNow] * -1;
                lastStep = [[NSDate alloc] init];
                if (timeSinceLastThresholdCrossing > minTimeSinceLastStep) {
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

-(NSArray *)amplifyValues: (NSArray *) rawValues{
    NSNumber *newNumber;
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    double product;
    
    for (NSNumber *n in rawValues) {
        product = [n doubleValue] * 10.0;
        newNumber = [[NSNumber alloc] initWithDouble:pow(product, 2)]; //square
//        newDecimal = [newDecimal decimalNumberByRaisingToPower:3]; //cubed!!  crap...
//        NSLog(@"%f", [newNumber doubleValue]);
        [tempArray addObject:newNumber];
    }
    
    return tempArray;
}

//for activity detection
-(NSArray *)squareValues: (NSArray *) rawValues{
    NSNumber *newNumber;
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    double product;
    
    for (NSNumber *n in rawValues) {
        product = [n doubleValue] * 10.0;
        newNumber = [[NSNumber alloc] initWithDouble:pow(product, 2)]; //square
        [tempArray addObject:newNumber];
    }
    
    return tempArray;

}

//for step detection
-(NSArray *)cubeValues: (NSArray *) rawValues{
    NSNumber *newNumber;
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    double product;
    
    for (NSNumber *n in rawValues) {
        product = [n doubleValue] * 10.0;
        newNumber = [[NSNumber alloc] initWithDouble:pow(product, 3)]; //cube
        [tempArray addObject:newNumber];
    }
    
    return tempArray;
}


//returns true if buffer is ready for step detection
-(BOOL)addToBuffer: (NSArray *) newVals{
    if([buffer count] < 5){
        [buffer addObject:newVals];
    }
    else{
        [buffer removeObjectAtIndex:0];
        [buffer addObject:newVals];
        return TRUE;
    }
    return FALSE;
}


//x: 0
//y: 1
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
        threshold = 600;
        //take a time stamp when step detection starts
        lastStep = [[NSDate alloc] init];
        buffer = [[NSMutableArray alloc] init];
        minTimeSinceLastStep = 0.35;
    }
    
    return self;
}

@end