//
//  ActivityReading.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActivityReading : NSObject

@property (nonatomic, strong) NSArray *accelerometerValues;
@property (nonatomic, strong) NSArray *features;
@property (nonatomic, strong) NSString *activityString;
@property BOOL isStep;
@property double timeStamp;

-(id)initWithAccelerometerValues:(NSArray *) accel features:(NSArray *) feat activity:(NSString *) act stepDetected:(BOOL) step timeStamp:(double)time;

@end
