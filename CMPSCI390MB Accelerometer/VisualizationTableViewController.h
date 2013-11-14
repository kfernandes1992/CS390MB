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
#import "StepDetectorCellView.h"
#import "ActivityCellView.h"
#import "AccelerometerCellView.h"
#import "XFFT3CellView.h"
#import "SpeedMeanCellView.h"
#import "ViewSelectionController.h"
#import "SelectionViewNavigationControllerViewController.h"

@interface VisualizationTableViewController : UITableViewController
@property (nonatomic, strong) ActivityDetector *activityDetector;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *modalViewButton;

@end
