//
//  CPTGraphView.h
//  CMPSCI390MB Accelerometer
//
//  Created by Marco Chiang on 11/4/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CorePlot-CocoaTouch.h"

@interface CPTGraphView : CPTGraphHostingView <CPTPlotDataSource>
@property (nonatomic, strong) CPTXYGraph* graph;
@property (atomic, strong) NSMutableArray* data;


-(void) addPlotFromData: (NSMutableArray*) dataArray;
- (NSUInteger) numberOfRecordsForPlot:(CPTPlot *) plot;


-(NSNumber *)numberForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
               recordIndex:(NSUInteger)index;

@end