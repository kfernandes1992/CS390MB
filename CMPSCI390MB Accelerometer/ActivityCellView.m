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
    double diameter = 10.0;
    int skip = 1;
    int numberOfCircles = 20;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor lightGrayColor].CGColor);
    ActivityReading *r;
    
    if (readings.count > numberOfCircles) {
        skip = readings.count / numberOfCircles;
    }
    
    for (int i = 10; i <= 240; i += skip) {
        r = [readings objectAtIndex:i];
        
        if ([r.activityString isEqualToString:@"Stationary"]){
            //set color
            CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
        }
        
        else if([r.activityString isEqualToString:@"Walking"]){
            //set color
            CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
        }
        
        else if([r.activityString isEqualToString:@"Running"]){
            //set color
            CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
            CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
        }
        
        CGRect circlePoint = (CGRectMake((double)i, 20, diameter, diameter));
        CGContextFillEllipseInRect(context, circlePoint);
    }
}


- (id)initWithFrame:(CGRect)frame andReadings:(NSMutableArray *)read
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.readings = read;
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
