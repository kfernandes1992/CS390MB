//
//  StepDetector.h
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 9/29/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepDetector : NSObject

-(BOOL) detectStepsOnValues: (NSArray*) accelValues;

@end
