//
//  SpeedMeanCellView.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "SpeedMeanCellView.h"

NSMutableArray *readings;
double divisor;

@implementation SpeedMeanCellView

-(void)drawRect:(CGRect)rect{
    int skip;
    int numberOfCircles;
    int maxNumberOfCircles = 300;
    double diameter = 2.0;
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
        double speedMeanValue = [[r.features objectAtIndex:27] doubleValue];
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
        CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
        plotPoint = (CGRectMake((double)j, speedMeanValue / divisor, diameter, diameter));
        CGContextFillEllipseInRect(context, plotPoint);
        
        //update skip
        i += skip;
        j++;
    }
}

- (id)initWithFrame:(CGRect)frame andReadings:(NSMutableArray *)read andDivisor:(double)div
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        divisor = div;
        readings = read;
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
