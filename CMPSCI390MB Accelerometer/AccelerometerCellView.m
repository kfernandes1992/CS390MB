//
//  AccelerometerCellView.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "AccelerometerCellView.h"
#import "ActivityDetector.h"

double divisor;
//NSMutableArray *readings;

@implementation AccelerometerCellView

@synthesize activityDetector;
@synthesize readings;

-(void)drawRect:(CGRect)rect{
    readings = activityDetector.readings;
    divisor = 100/(activityDetector.maxAccelerometerValue = activityDetector.minAccelerometerValue);
    int skip;
    int numberOfCircles;
    int maxNumberOfCircles = 200;
    double diameter = 2.0;
    double cellHeight = 100;
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
        
        //map x axis
        double xValue = [[r.accelerometerValues objectAtIndex:0] doubleValue];
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
        CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
        plotPoint = (CGRectMake((double)j, (cellHeight / 2) - (xValue * divisor), diameter, diameter));
        CGContextFillEllipseInRect(context, plotPoint);
        
        //map y axis
        double yValue = [[r.accelerometerValues objectAtIndex:1] doubleValue];
        CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
        CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
        plotPoint = (CGRectMake((double)j, (cellHeight / 2) - (yValue * divisor), diameter, diameter));
        CGContextFillEllipseInRect(context, plotPoint);
        
        //map z axis
        double zValue = [[r.accelerometerValues objectAtIndex:2] doubleValue];
        CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
        CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
        plotPoint = (CGRectMake((double)j, (cellHeight / 2) - (zValue * divisor), diameter, diameter));
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
