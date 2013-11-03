//
//  VisualizationCell.m
//  Data visualization
//
//  Created by Erik Risinger on 11/1/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "VisualizationCell.h"

@implementation VisualizationCell

-(void) drawRect:(CGRect)rect{
    double diameter = 10.0;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    for (int i = 20; i <= 300; i += 20) {
        
        CGRect circlePoint = (CGRectMake((double)i, 20, diameter, diameter));
        CGContextFillEllipseInRect(context, circlePoint);
    }
    

}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
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
