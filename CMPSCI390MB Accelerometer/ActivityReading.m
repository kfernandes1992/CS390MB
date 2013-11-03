//
//  ActivityReading.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ActivityReading.h"

@implementation ActivityReading

@synthesize accelerometerValues;
@synthesize features;
@synthesize activityString;
@synthesize isStep;
@synthesize timeStamp;

-(id)initWithAccelerometerValues:(NSArray *) accel features:(NSArray *) feat activity:(NSString *) act stepDetected:(BOOL) step timeStamp:(double)time{
    self = [super init];
    if(self){
        accelerometerValues = accel;
        features = feat;
        activityString = act;
        isStep = step;
        timeStamp = time;
    }
    return self;
}

@end
