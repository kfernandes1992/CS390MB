//
//  DecisionTree.h
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/20/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DecisionTree : NSObject

@property(nonatomic, strong) NSMutableString *activity;
@property double timeStamp;
@property double lastStationary;
@property double lastWalking;
@property double lastRunning;

-(NSString*) decideBasedOnValues:(NSArray*)values;
@end
