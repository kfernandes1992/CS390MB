//
//  ViewSelectionController.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/5/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewSelectionController : UITableViewController

@property(nonatomic, strong) IBOutlet UIBarButtonItem *doneButton;

-(IBAction)doneEditing:(id)sender;
-(void)setDictionaryArray:(NSMutableArray *) d;

@end
