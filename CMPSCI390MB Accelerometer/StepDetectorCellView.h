//
//  StepDetectorCellView.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "ActivityDetector.h"
@class ActivityDetector;

@interface StepDetectorCellView : UIView

@property (nonatomic, weak) ActivityDetector *activityDetector;

- (id)initWithFrame:(CGRect)frame andActivityDetector:(ActivityDetector *) d;

@end
