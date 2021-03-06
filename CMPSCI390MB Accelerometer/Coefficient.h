//
//  Coefficient.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 10/20/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coefficient : NSObject

-(int) compareTo:(Coefficient *) c;

@property(nonatomic, assign) double re;
@property(nonatomic, assign) double im;
@property(nonatomic, assign) double freq;
@property(nonatomic, assign) double absoluteValue;

- (id)initWithX:(double) x Y:(double) y frequency:(double) frequency;

@end
