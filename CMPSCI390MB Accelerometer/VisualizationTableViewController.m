//
//  VisualizationTableViewController.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "VisualizationTableViewController.h"

NSMutableArray *activityViewDictionaries;
NSMutableArray *displayDictionaries;

@interface VisualizationTableViewController ()


@end

@implementation VisualizationTableViewController

@synthesize activityDetector;
@synthesize timer;

//-(IBAction)showSelectionModalViewController:(id)sender{
//    ViewSelectionController *tvc = [[ViewSelectionController alloc] initWithStyle:UITableViewStylePlain];
//    SelectionViewNavigationControllerViewController *modalNC = [[SelectionViewNavigationControllerViewController alloc] initWithRootViewController:tvc];
//    [self presentViewController:modalNC animated:YES completion:nil];
//    
//}

-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showModal"]) {
        if ([[segue destinationViewController] respondsToSelector:@selector(setDictionaryArray:)]) {
            [[segue destinationViewController] performSelector:@selector(setDictionaryArray:) withObject:activityViewDictionaries afterDelay:0];
        }
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [self buildDisplayDictionaries];
    [self.tableView reloadData];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

-(void)buildDisplayDictionaries{
    displayDictionaries = [[NSMutableArray alloc] init];
    for(NSMutableDictionary *d in activityViewDictionaries){
        if ([[d objectForKey:@"show"] isEqualToString:@"show"]) {
            [displayDictionaries addObject:d];
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    activityDetector = [[ActivityDetector alloc] init];
    timer = [NSTimer scheduledTimerWithTimeInterval:.20 target:self.tableView selector:@selector(reloadData) userInfo:nil repeats:YES];
    
    //step cell dictionary
    NSMutableDictionary *stepCellDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:activityDetector.stepCellView, @"view", @"show", @"show", @"Step Detector", @"section", nil];
    
    //activity cell dictionary
    NSMutableDictionary *activityCellDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:activityDetector.activityCellView, @"view", @"show", @"show", @"Activity Detector", @"section", nil];
    
    //accelerometer cell dictionary
    NSMutableDictionary *accelerometerCellDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:activityDetector.accelerometerCellView, @"view", @"show", @"show", @"Acceleromter Values", @"section", nil];
    
    //XFFT3 cell dictionary
    NSMutableDictionary *xFFT3CellDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:activityDetector.xFFT3CellView, @"view", @"show", @"show", @"XFFT3 Values", @"section", nil];
    
    //speed mean dictionary
    NSMutableDictionary *speedMeanCellDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:activityDetector.speedMeanCellView, @"view", @"show", @"show", @"Speed Mean Values", @"section", nil];
    
    activityViewDictionaries = [[NSMutableArray alloc] initWithObjects:stepCellDictionary, activityCellDictionary, accelerometerCellDictionary, xFFT3CellDictionary, speedMeanCellDictionary, nil];
    
    [self buildDisplayDictionaries];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

//-(BOOL)shouldAutorotate{ return NO; }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return displayDictionaries.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [[displayDictionaries objectAtIndex:section] objectForKey:@"section"];
//    switch (section) {
//        case 0:
//            return @"Step Counter";
//        case 1:
//            return @"Activity Detector";
//        case 2:
//            return @"Accelerometer Values";
//        case 3:
//            return @"XFFT3 Values";
//        case 4:
//            return @"Speed Mean";
//        default:
//            return nil;
//    }
}

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.backgroundColor = [UIColor clearColor];
    UIView *backGroundView;
    backGroundView = [[displayDictionaries objectAtIndex:indexPath.section] objectForKey:@"view"];
    [backGroundView setNeedsDisplay];
//    cell.backgroundView = backGroundView;
//    cell.selectedBackgroundView = backGroundView;
    [cell addSubview:backGroundView];

    
    
//    switch (indexPath.section) {
//        //step detector
//        case 0:
//            cell.backgroundView = [activityDetector getStepDetectorCellView];
//            cell.selectedBackgroundView = [activityDetector getStepDetectorCellView];
//            break;
//        
//        //activity detector
//        case 1:
//            cell.backgroundView = [activityDetector getActivityCellView];
//            cell.selectedBackgroundView = [activityDetector getActivityCellView];
//            break;
//        
//        //raw accelerometer data
//        case 2:
//            cell.backgroundView = [activityDetector getAccelerometerCellView];
//            cell.selectedBackgroundView = [activityDetector getAccelerometerCellView];
//            break;
//            
//        //xFFT3 data
//        case 3:
//            cell.backgroundView = [activityDetector getXFFT3CellView];
//            cell.selectedBackgroundView = [activityDetector getXFFT3CellView];
//            break;
//            
//        //speedMean data
//        case 4:
//            cell.backgroundView = [activityDetector getSpeedMeanCellView];
//            cell.selectedBackgroundView = [activityDetector getSpeedMeanCellView];
//            break;
//            
////        default:
////            break;
//    }

    
//    cell.textLabel.text = @"Blah";
    
    return cell;
}

//-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
//    [self.tableView reloadData];
//}


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
