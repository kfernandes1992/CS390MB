//
//  Window.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "Window.h"

@implementation Window

@synthesize n, window;

//public Window(int windowSize)

-(id)initWithWindowSize:(int)windowSize
{
    
    self = [super init];
    if (self) {
        n = windowSize;
        
        // Make a Hamming window
        //    window = new double[n];
        window = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < n; i++)
        {
            //        window[i] = 0.54 - 0.46*Math.cos(2*Math.PI*(double)i/((double)n-1));
            double w = 0.54 - 0.46 * cos(2 * M_PI * (double)i / ((double)n - 1));
            [window setObject:[NSNumber numberWithDouble:w] atIndexedSubscript:i];
        }
    }
    return self;
}

//public void applyWindow(double[] buffer)
-(void)applyWindowWithBuffer:(NSMutableArray *) buffer
{
    for (int i = 0; i < n; i ++)
    {
//        buffer[i] *= window[i];
        double b = [[buffer objectAtIndex:i] doubleValue];
        double w = [[window objectAtIndex:i] doubleValue];
        [buffer setObject:[NSNumber numberWithDouble:b * w] atIndexedSubscript:i];
    }
}


@end
