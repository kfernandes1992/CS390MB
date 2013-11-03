//
//  ActivityDetector.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//


#import "ActivityDetector.h"

@implementation ActivityDetector : NSObject

@synthesize logArray;
@synthesize smoothingFilter;
@synthesize stepDetector;
@synthesize steps;
@synthesize activityFeatureExtractor;
@synthesize decisionTree;
@synthesize reorientAxis;
@synthesize readings;
@synthesize motionManager;

static const NSTimeInterval accelerationInterval= .1;

-(id)init{
    self = [super init];
    if (self) {
        [self togglewithButton:[[UIButton alloc] init]];
    }
    return self;
}

-(void)togglewithButton:(UIButton *)button{
    
    /* initialize stuff */
    [button setTitle:@"STOP" forState:UIControlStateNormal];
    stepDetector=[[StepDetector alloc] init];
    steps = 0;
    logArray = [[NSMutableArray alloc] init];
    [motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
        
        //accesory values
        BOOL activityIsStep = false;
        NSDate *dateStamp = [NSDate date];
        NSTimeInterval millisecondsSince1970 = [dateStamp timeIntervalSince1970] * 1000;
        
        //accelerometer readings
        NSNumber *xVal= [[NSNumber alloc] initWithDouble:[accelerometerData acceleration].x];
        NSNumber *yVal= [[NSNumber alloc] initWithDouble:[accelerometerData acceleration].y];
        NSNumber *zVal= [[NSNumber alloc] initWithDouble:[accelerometerData acceleration].z];
        
        /* prepare data for detection */
        
        //get raw values from accelerometer
        NSArray *rawArray = [[NSArray alloc] initWithObjects:xVal, yVal, zVal, nil];
        
        /*
         //filter out noise
         smoothingFilter=[[KMESmoothingFilter alloc]init];
         NSArray *filteredData= [smoothingFilter getFilteredValuesOfXValue:numX ofYValue:numY ofZValue:numZ];
         */
        
        
        /* detect activity */
        
        //square values for activity detection
        NSArray *squaredValues = [stepDetector squareValues:rawArray];
        
        //reorient, get extracted features
        ReorientAxis* reorienter=[[ReorientAxis alloc] init];
        NSArray* reorientedValues= [reorienter getReorientedX: [[squaredValues objectAtIndex:0] doubleValue] Y:[[squaredValues objectAtIndex:1] doubleValue] Z:[[squaredValues objectAtIndex:2] doubleValue]];
        
        NSArray* extractedFeatures = [activityFeatureExtractor extractFeaturesWithFeatures:millisecondsSince1970 ortAcX:[[reorientedValues objectAtIndex:0] doubleValue] ortAcY:[[reorientedValues objectAtIndex:1] doubleValue] ortAcZ:[[reorientedValues objectAtIndex:2] doubleValue] acX:[[squaredValues objectAtIndex:0] doubleValue] acY:[[squaredValues objectAtIndex:1] doubleValue] acZ:[[squaredValues objectAtIndex:2] doubleValue]];
        
        //classify activity
        NSString* classifiedActivity= [decisionTree decideBasedOnValues:extractedFeatures];
        
        /* detect steps */
        
        //cube values for step detection
        NSArray *cubedValues = [stepDetector cubeValues:rawArray];
        if([stepDetector detectStepsOnValues:cubedValues]){
            activityIsStep = true;
            steps++;
        }
        
        /* record findings */
        
        //log values (for csv)
        [logArray addObject:[[NSString alloc] initWithFormat:@"%f,%@,%@,%@\n",
                             millisecondsSince1970,
                             xVal,
                             yVal,
                             zVal]];
        
        //store reading
        ActivityReading *a = [[ActivityReading alloc] initWithAccelerometerValues:rawArray features:extractedFeatures activity:classifiedActivity stepDetected:activityIsStep timeStamp:millisecondsSince1970];
        [readings addObject:a];
        
    }];
}

-(void)arrayToFile:(NSMutableArray *) log{
    
    
    // create a filePath with the name accelerometerlog.csv
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"filteredaccelerometerlog.csv"];
    NSURL *filePath= [[NSURL alloc] initWithString:fp];
    
    
    //from the array of strings, create one big string
    NSMutableString *writeString = [NSMutableString stringWithCapacity:0];
    for(NSMutableString *s in log){
        [writeString appendString: s];
    }
    
    [writeString writeToURL:filePath atomically:FALSE encoding:NSUTF8StringEncoding error:NULL];
}

-(id)getStepDetectorCellView{
    return nil;
}

-(id)getActivityCellView{
    //set up view
//    CGRect frame = CGRectMake(0.0, 0.0, 320.0, 100.0);
    
    //get data for view
    return [[ActivityCellView alloc] init];
}

-(id)getAccelerometerCellView{
    
    return nil;
}

-(id)getXFFT3CellView{
    
    return nil;
}

-(id)getSpeedMeanCellView{
    
    return nil;
}


//-(IBAction)emailFile{
//    
//    //    //find the accelerometer file
//    //    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    //    NSString *documentsDirectory = [paths objectAtIndex:0];
//    //    NSString *fp = [documentsDirectory stringByAppendingPathComponent:@"filteredaccelerometerlog.csv"];
//    //    NSURL *filePath= [[NSURL alloc] initWithString:fp];
//    //
//    //
//    //    //get the data from the file
//    //    NSData *fileData = [NSData dataWithContentsOfURL:filePath];
//    
//    //dump data into body of email
//    NSMutableString *bodyString = [[NSMutableString alloc] init];
//    for(NSString *s in logArray){
//        [bodyString appendString:s];
//    }
//    
//    //set email parameters
//    NSString *emailTitle = @"Filtered Accelerometer Data .csv File";
//    NSArray *toRecipents = [NSArray arrayWithObject:@"kevinf@umass.edu"];
//    
//    
//    //create email VC
//    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
//    mc.mailComposeDelegate = self;
//    [mc setSubject:emailTitle];
//    [mc setToRecipients:toRecipents];
//    [mc setMessageBody:bodyString isHTML:NO];
//    
//    //    [mc addAttachmentData:fileData mimeType:@"text/html" fileName:@"Filtered Accelerometer Data .csv File"];
//    
//    //present VC
//    [self presentViewController:mc animated:TRUE completion:NULL];
//}
//
//- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error{
//    [self dismissViewControllerAnimated:TRUE completion:NULL];
//};
//
//- (id)init
//{
//    self = [super init];
//	
//    if (self) {
//        logArray = [[NSMutableArray alloc] init];
//        motionManager= [[CMMotionManager alloc]init];
//        steps = 0;
//        activityFeatureExtractor= [[ActivityFeatureExtractor alloc] init];
//        decisionTree = [[DecisionTree alloc] init];
//        reorientAxis = [[ReorientAxis alloc] init];
//        readings = [[NSMutableArray alloc] init];
//        
//        if ([motionManager isAccelerometerAvailable] == YES) {
//            [motionManager setAccelerometerUpdateInterval:accelerationInterval];
//            
//        }
//    }
//    return self;
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end