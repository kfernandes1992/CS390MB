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
double maxX = 0;
double minX = 0;
double maxY = 0;
double minY = 0;
double maxZ = 0;
double minZ = 0;
double maxAccelerometerValue = 0;
double minAccelerometerValue = 0;
double maxXFFT3 = 0;
double minXFFT3 = 0;
double maxSpeedMean = 0;
double minSpeedMean = 0;
int cellHeight = 1000;


-(void)runTheBitch{
    
    /* initialize stuff */
//    [button setTitle:@"STOP" forState:UIControlStateNormal];
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
        [self updateMaxesAndMins];
        
    }];
}

-(void)updateMaxesAndMins{
    ActivityReading *currentReading = readings.lastObject;
    
    double currentX = [[currentReading.accelerometerValues objectAtIndex:0] doubleValue];
    double currentY = [[currentReading.accelerometerValues objectAtIndex:1] doubleValue];
    double currentZ = [[currentReading.accelerometerValues objectAtIndex:2] doubleValue];
    double currentXFFT3 = [[currentReading.features objectAtIndex:5] doubleValue];
    double currentSpeedMean = [[currentReading.features objectAtIndex:27] doubleValue];
    
    /* accelerometer readings */
    
    //update X
    if (currentX > maxX) {
        maxX = currentX;
    }
    else if(currentX < minX){
        minX = currentX;
    }
    
    //update y
    if (currentY > maxY) {
        maxY = currentY;
    }
    else if(currentY < minY){
        minY = currentY;
    }
    
    //update z
    if (currentZ > maxZ) {
        maxZ = currentZ;
    }
    else if(currentZ < minZ){
        minZ = currentZ;
    }
    
    //update accelerometer maxes and mins
    if (maxX > maxAccelerometerValue) {
        maxAccelerometerValue = maxX;
    }
    else if (minX < minAccelerometerValue){
        minAccelerometerValue = minX;
    }
    
    if (maxY > maxAccelerometerValue) {
        maxAccelerometerValue = maxY;
    }
    else if (minY < minAccelerometerValue){
        minAccelerometerValue = minY;
    }
    
    if (maxZ > maxAccelerometerValue) {
        maxAccelerometerValue = maxZ;
    }
    else if (minZ < minAccelerometerValue){
        minAccelerometerValue = minZ;
    }
    
    /* features */
    
    //update XFFT3
    if (currentXFFT3 > maxXFFT3) {
        maxXFFT3 = currentXFFT3;
    }
    else if(currentXFFT3 < minXFFT3){
        minXFFT3 = currentXFFT3;
    }
    
    //update speed mean
    if (currentSpeedMean > maxSpeedMean) {
        maxSpeedMean = currentSpeedMean;
    }
    else if(currentSpeedMean < minSpeedMean){
        minSpeedMean = currentSpeedMean;
    }
    
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
    double accelCellHeight = 100;
    CGRect frame = CGRectMake(0.0, 0.0, 320.0, accelCellHeight);
    
    //get data for view
    return [[ActivityCellView alloc] initWithFrame:frame andReadings:readings];
}

-(id)getAccelerometerCellView{
    double divisor = (double)((maxAccelerometerValue - minAccelerometerValue) / cellHeight);
    CGRect frame = CGRectMake(0.0, 0.0, 320.0, cellHeight);
    
    return [[AccelerometerCellView alloc] initWithFrame:frame andReadings:readings andDivisor:divisor];
}

-(id)getXFFT3CellView{
    double divisor = (double)((maxXFFT3 - minXFFT3) / cellHeight);
    CGRect frame = CGRectMake(0.0, 0.0, 320.0, cellHeight);
    
    return [[XFFT3CellView alloc] initWithFrame:frame andReadings:readings andDivisor:divisor];
}

-(id)getSpeedMeanCellView{
    double divisor = (double)((maxSpeedMean - minSpeedMean) / cellHeight);
    CGRect frame = CGRectMake(0.0, 0.0, 320.0, cellHeight);
    
    return [[XFFT3CellView alloc] initWithFrame:frame andReadings:readings andDivisor:divisor];
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
- (id)init
{
    self = [super init];
	
    if (self) {
        logArray = [[NSMutableArray alloc] init];
        motionManager= [[CMMotionManager alloc]init];
        steps = 0;
        activityFeatureExtractor= [[ActivityFeatureExtractor alloc] init];
        decisionTree = [[DecisionTree alloc] init];
        reorientAxis = [[ReorientAxis alloc] init];
        readings = [[NSMutableArray alloc] init];
        
        if ([motionManager isAccelerometerAvailable] == YES) {
            [motionManager setAccelerometerUpdateInterval:accelerationInterval];
            [self runTheBitch];

        }
    }
    return self;
}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end