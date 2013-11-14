//
//  ActivityCellView.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/3/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ActivityCellView.h"
#import "ActivityDetector.h"
@implementation ActivityCellView

@synthesize activityDetector;
@synthesize readings;

-(void) drawRect:(CGRect)rect{
    readings = activityDetector.readings;
    int skip;
    int numberOfCircles;
    int maxNumberOfCircles = 90;
//    double diameter = 10.0;
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
        
        //grab object to represent
        r = [readings objectAtIndex:i];
        
        //set color according to activity type
        if ([r.activityString isEqualToString:@"Stationary"]){
            CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
        }
        
        else if([r.activityString isEqualToString:@"Walking"]){
            CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
        }
        
        else if([r.activityString isEqualToString:@"Running"]){
            CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
        }
        
        //draw dot
//        CGRect circleRect = (CGRectMake((double)j, 50, diameter, diameter));
//        CGContextFillEllipseInRect(context, circleRect);
        CGRect barRect = CGRectMake((double)j, 25, 3, 50);
        CGContextFillRect(context, barRect);
        
        //update indices
        i += skip;
        j += 2;
    }
    
    //draw current activity dot
    if ([[readings.lastObject activityString] isEqualToString:@"Stationary"]) {
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    }
    else if([[readings.lastObject activityString] isEqualToString:@"Walking"]){
        CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    }
    else if([[readings.lastObject activityString] isEqualToString:@"Running"]){
        CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    }
    else{
        CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
    }
    
    CGRect currentActivityDot = CGRectMake(300.0, 10.0, 10.0, 10.0);
    CGContextFillEllipseInRect(context, currentActivityDot);
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
