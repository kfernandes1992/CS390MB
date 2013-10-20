//
//  Coefficient.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 10/20/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "Coefficient.h"

@implementation Coefficient

@synthesize re, im, freq, abs;

- (id)initWithX:(double) x Y:(double) y frequency:(double) frequency
{
    self = [super init];
    if(self)
    {
        re = x;
        im = y;
        freq = frequency;
        abs = hypot(x,y);
    }
    
    return self;
}


@end
