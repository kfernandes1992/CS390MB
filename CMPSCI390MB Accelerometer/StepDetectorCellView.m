//
//  StepDetectorCellView.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "StepDetectorCellView.h"
#import "ActivityDetector.h"

@implementation StepDetectorCellView

@synthesize activityDetector;

int steps;

-(void)drawRect:(CGRect)rect{
    steps = [activityDetector getSteps];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    
    //draw background
    CGContextFillRect(context, self.frame);
    NSString *stepCount = [[NSString alloc] initWithFormat:@"%d steps", steps];
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    [stepCount drawAtPoint:CGPointMake(10.0, 10.0) withFont:[UIFont boldSystemFontOfSize:22.0]];
}

- (id)initWithFrame:(CGRect)frame andActivityDetector:(ActivityDetector *)d
{
    self = [super initWithFrame:frame];
    NSLog(@"Frame: %@", NSStringFromCGRect(frame));
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
