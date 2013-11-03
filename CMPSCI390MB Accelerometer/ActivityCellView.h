//
//  ActivityCellView.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/3/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityReading.h"

@interface ActivityCellView : UIView

@property (nonatomic, weak) NSMutableArray *readings;

@end
