//
//  ActivityCellView.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/3/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ActivityCellView.h"

@implementation ActivityCellView

@synthesize readings;

-(void) drawRect:(CGRect)rect{
    int skip;
    int numberOfCircles;
    int maxNumberOfCircles = 40;
    double diameter = 5.0;
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
        CGRect circlePoint = (CGRectMake((double)j, 20, diameter, diameter));
        CGContextFillEllipseInRect(context, circlePoint);
        
        //update indices
        i += skip;
        j += 5;
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
    
    CGRect currentActivityDot = CGRectMake(280.0, 10.0, 20.0, 20.0);
    CGContextFillEllipseInRect(context, currentActivityDot);
}


- (id)initWithFrame:(CGRect)frame andReadings:(NSMutableArray *)read
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.readings = [[NSMutableArray alloc] initWithArray:read];
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
