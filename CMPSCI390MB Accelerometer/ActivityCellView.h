//
//  ActivityCellView.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/3/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityReading.h"
//#import "ActivityDetector.h"
@class ActivityDetector;

@interface ActivityCellView : UIView

@property (nonatomic, weak) ActivityDetector *activityDetector;
@property (nonatomic, strong) NSMutableArray *readings;

- (id)initWithFrame:(CGRect)frame andActivityDetector:(ActivityDetector *) d;


@end
