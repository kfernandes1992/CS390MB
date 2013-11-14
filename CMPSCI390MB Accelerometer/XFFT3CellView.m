//
//  XFFT3CellView.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "XFFT3CellView.h"
#import "ActivityDetector.h"
double divisor;

@implementation XFFT3CellView

@synthesize activityDetector;
@synthesize readings;

-(void)drawRect:(CGRect)rect{
    readings = activityDetector.readings;
    divisor = 10 / (activityDetector.maxXFFT3 - activityDetector.minXFFT3);
    int skip;
    int numberOfCircles;
    int maxNumberOfCircles = 200;
    double diameter = 5.0;
    double cellHeight = 100.0;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    ActivityReading *r;
    
    //draw background
    CGContextFillRect(context, self.frame);
    
    //draw dots
    if (readings.count > maxNumberOfCircles) {
        numberOfCircles = maxNumberOfCircles;
        skip = readings.count / numberOfCircles;
    }
    else{
        numberOfCircles = readings.count;
        skip = 1;
    }
    
    int i = 0;
    int j = 0;
    while (readings.count > 1 && i < readings.count) {
        CGRect plotPoint;
        //grab object to represent
        r = [readings objectAtIndex:i];
        
        //plot
        double xFFTValue = [[r.features objectAtIndex:5] doubleValue];
        CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
        CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
        plotPoint = (CGRectMake((double)j, (cellHeight) - (xFFTValue / 4), diameter, diameter));
        CGContextFillEllipseInRect(context, plotPoint);
        
        //update skip
        i += skip;
        j++;
    }
}

- (id)initWithFrame:(CGRect)frame andActivityDetector:(ActivityDetector *)d
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        activityDetector = d;
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
