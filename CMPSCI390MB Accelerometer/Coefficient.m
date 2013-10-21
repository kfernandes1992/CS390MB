//
//  Coefficient.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 10/20/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "Coefficient.h"

@implementation Coefficient

@synthesize re, im, freq, absoluteValue;

- (id)initWithX:(double) x Y:(double) y frequency:(double) frequency
{
    self = [super init];
    if(self)
    {
        re = x;
        im = y;
        freq = frequency;
        absoluteValue = hypot(x,y);
    }
    
    return self;
}

-(int) compareTo:(Coefficient *) c
{
    if((self.absoluteValue - c.absoluteValue) > 0){
        return 1;
    }
    
    else if((self.absoluteValue - c.absoluteValue) < 0){
        return -1;
    }
    
    else{
        return 0;
    }
    
}



@end
