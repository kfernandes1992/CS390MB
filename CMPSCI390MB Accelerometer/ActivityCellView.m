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
    int skip = 1;
    double diameter = 5.0;
    int numberOfCircles = 40;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor lightGrayColor].CGColor);
    ActivityReading *r;
    
    if (readings.count > numberOfCircles) {
        skip = readings.count / numberOfCircles;
    }
    
    int i = 0;
    int j = 0;
    
    while (readings.count > 1 && i < readings.count) {
        r = [readings objectAtIndex:i];
        
        if ([r.activityString isEqualToString:@"Stationary"]){
            //set color
            CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
            CGRect circlePoint = (CGRectMake((double)j, 20, diameter, diameter));
            CGContextFillEllipseInRect(context, circlePoint);
        }
        
        else if([r.activityString isEqualToString:@"Walking"]){
            //set color
            CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
            CGRect circlePoint = (CGRectMake((double)j, 20, diameter, diameter));
            CGContextFillEllipseInRect(context, circlePoint);
        }
        
        else if([r.activityString isEqualToString:@"Running"]){
            //set color
            CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
            CGRect circlePoint = (CGRectMake((double)j, 20, diameter, diameter));
            CGContextFillEllipseInRect(context, circlePoint);
        }
        i += skip;
        j += 5;
    }
    i = 0;
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
