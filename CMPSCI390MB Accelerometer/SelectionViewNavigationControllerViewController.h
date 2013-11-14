//
//  SelectionViewNavigationControllerViewController.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/6/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewSelectionController.h"


@interface SelectionViewNavigationControllerViewController : UINavigationController

@property (nonatomic, strong) IBOutlet UIBarButtonItem *doneButton;
@property (nonatomic, strong) ViewSelectionController *tableViewController;

-(void)setDictionaryArray:(NSMutableArray *) dict;

@end
