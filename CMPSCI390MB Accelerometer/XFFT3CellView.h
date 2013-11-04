//
//  XFFT3CellView.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityReading.h"

@interface XFFT3CellView : UIView

- (id)initWithFrame:(CGRect)frame andReadings:(NSMutableArray *)read andDivisor:(double)div;

@end
