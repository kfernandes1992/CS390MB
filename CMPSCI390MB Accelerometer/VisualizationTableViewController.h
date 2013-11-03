//
//  VisualizationTableViewController.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VisualizationCell.h"
#import "ActivityDetector.h"

@interface VisualizationTableViewController : UITableViewController

@property (nonatomic, strong) ActivityDetector *activityDetector;
@property (nonatomic, strong) NSTimer *timer;

@end
