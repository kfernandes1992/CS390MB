//
//  DecisionTree.m
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/20/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "DecisionTree.h"

@implementation DecisionTree
@synthesize activity;
@synthesize timeStamp;
@synthesize lastStationary;
@synthesize lastWalking;
@synthesize lastRunning;

-(NSString*) decideBasedOnValues:(NSArray*)values{
    //values[5] is xFFT3. values[27] is speedMean. values contain nsnumber wrapped doubles.
    double xFFT3= [[values objectAtIndex:5]doubleValue];
    double speedMean= [[values objectAtIndex:27] doubleValue];
    double windowSize = [[values objectAtIndex:44] doubleValue];
    timeStamp = [[values objectAtIndex:43] doubleValue];
    
//    NSLog(@"xFFT3: %f, speedMean: %f", xFFT3, speedMean);
    //if(xFFT3 <= 1465.976795){
    if(xFFT3 <= 1000){
        
        //registers stationary
        if (speedMean <= 66.388517) {
            if (lastRunning < timeStamp - windowSize && lastWalking < timeStamp - windowSize) {
                activity = [[NSMutableString alloc] initWithString:@"Stationary"];
                lastStationary = timeStamp;
            }
        }
        
        //registers walking
        else{
            if (lastRunning < timeStamp - windowSize) {
                activity = [[NSMutableString alloc] initWithString:@"Walking"];
                lastWalking = timeStamp;
            }
        }
    }
    
    //registers running
    else{
        activity = [[NSMutableString alloc] initWithString:@"Running"];
        lastRunning = timeStamp;
    }
    
//    NSLog(@"DecisionTree: %@", returnString);
    return activity;
}

-(id)init{
    self = [super init];
    if (self) {
        timeStamp = 0.0;
        activity = [[NSMutableString alloc] init];
    }
    return self;
}

@end
