//
//  DecisionTree.m
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/20/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "DecisionTree.h"

@implementation DecisionTree


-(NSString*) decideBasedOnValues:(NSArray*)values{
    //values[0] is xFFT3. values[1] is speedMean. values contain nsnumber wrapped doubles.
    double xFFT3= [[values objectAtIndex:0]doubleValue];
    double speedMean= [[values objectAtIndex:1] doubleValue];
    
    if(xFFT3 <= 1465.976795){
      return (speedMean<=66.388517)?  @"Stationary":@"Walking";
    }
    else{
        return @"Running";
    }
}

@end
