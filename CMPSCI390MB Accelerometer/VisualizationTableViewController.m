//
//  VisualizationTableViewController.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "VisualizationTableViewController.h"

@interface VisualizationTableViewController ()

@end

@implementation VisualizationTableViewController

@synthesize activityDetector;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    activityDetector = [[ActivityDetector alloc] init];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Step Counter";
        case 1:
            return @"Activity Detector";
        case 2:
            return @"Accelerometer Values";
        case 3:
            return @"XFFT3 Values";
        case 4:
            return @"SpeedMean";
        default:
            return nil;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
//    static NSString *StepCellIdentifier = @"StepCell";
//    static NSString *ActivityCellIdentifier = @"ActivityCell";
//    static NSString *AccelerometerCellIdentifier = @"AccelerometerCell";
//    static NSString *xFFT3CellIdentifier = @"xFFT3Cell";
//    static NSString *SpeedMeanCellIdentifier = @"SpeedMeanCell";
//    
//    
//    switch (indexPath.section) {
//        case 0:
//            CellIdentifier = @"StepCell";
//            break;
//        case 1:
//            CellIdentifier = @"ActivityCell";
//            break;
//        case 2:
//            CellIdentifier = @"AccelerometerCell";
//            break;
//        case 3:
//            CellIdentifier = @"xFFTCell";
//            break;
//        case 4:
//            CellIdentifier = @"speedMeanCell";
//            break;
//        default:
//            break;
//    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
//    switch (indexPath.section) {
//        //step detector
//        case 0:
//            CellIdentifier = @"StepCell";
//            cell.backgroundView = [activityDetector getActivityCellView];
//            cell.selectedBackgroundView = [activityDetector getActivityCellView];
//            break;
//        
//        //activity detector
//        case 1:
//            CellIdentifier = @"ActivityCell";
//            cell.backgroundView = [activityDetector getActivityCellView];
//            cell.selectedBackgroundView = [activityDetector getActivityCellView];
//            break;
//        
//        //raw accelerometer data
//        case 2:
//            CellIdentifier = @"AccelerometerCell";
//            cell.backgroundView = [activityDetector getActivityCellView];
//            cell.selectedBackgroundView = [activityDetector getActivityCellView];
//            break;
//            
//        //xFFT3 data
//        case 3:
//            CellIdentifier = @"XFFTCell";
//            cell.backgroundView = [activityDetector getActivityCellView];
//            cell.selectedBackgroundView = [activityDetector getActivityCellView];
//            break;
//            
//        //speedMean data
//        case 4:
//            CellIdentifier = @"SpeedMeanCell";
//            cell.backgroundView = [activityDetector getActivityCellView];
//            cell.selectedBackgroundView = [activityDetector getActivityCellView];
//            break;
//            
//        default:
//            break;
//    }

//    CellIdentifier = @"Cell";
    cell.backgroundView = [activityDetector getActivityCellView];
    cell.selectedBackgroundView = [activityDetector getActivityCellView];
//    cell.backgroundView = [[ActivityCellView alloc] init];
//    cell.selectedBackgroundView = [[ActivityCellView alloc] init];
    cell.textLabel.text = @"Blah";
    cell.textLabel.backgroundColor = [UIColor clearColor];
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView reloadData];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
