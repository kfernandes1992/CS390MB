//
//  ActivityFeatureExtractor.m
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/18/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ActivityFeatureExtractor.h"

@implementation ActivityFeatureExtractor

@synthesize xVector, yVector, zVector,speedVector, timeVector, energyVector,energyXYVector,WINDOW_IN_MILLISEC, lastAccX, lastAccY, lastAccZ;

- (id)init
{
    self = [super init];
    if (self)
    {
        WINDOW_IN_MILLISEC=5000.0;
        lastAccZ=0.0;
        lastAccZ=0.0;
        lastAccZ=0.0;
        
    }
    return self;
}


-(NSMutableArray *) extractFeaturesWithFeatures: (double) timestamp ortAcX :(double) ortAccX ortAcY: (double) ortAccY ortAcZ: (double) ortAccZ acX:
(double) accX acY: (double) accY acZ: (double) accZ {
    
    [self addTime:timestamp];
    double speed = sqrt(pow(accX-lastAccX,2)+pow(accY-lastAccY,2)+pow(accZ-lastAccZ,2));
    [self addValuesWithAccX:ortAccX withAccY:ortAccY withAccZ:ortAccZ withVectSpeed:speed];
    [self addEnergyValuesWithAccX:ortAccX withAccY:ortAccY withAccZ:ortAccZ];
    lastAccX = accX; lastAccY = accY; lastAccZ = accZ;
    //Return null if features not extracted
    if((timestamp-(long)[timeVector objectAtIndex:0])< WINDOW_IN_MILLISEC){
     return nil;
    }
    
    if([xVector count] == 0 || [xVector count]<2){
     return nil;
    }

    return [self extractFeatures];
}

-(NSMutableArray *) extractFeatures {
    //features array
    NSMutableArray* features = [[NSMutableArray alloc]init];
    
    //used repeatedly for the various feature calculations
    NSMutableArray *values;
    NSMutableArray *result;
    double mean;
    double dev;
    
    int featureIndex;
    double currentFeature;
    double valueAtIMinusOne;
    double timeAtI;
    double timeAtIMinusOne;
    double featureToStore;
    
    NSMutableArray* times = timeVector;
    double timeAtIndexZero = [[times objectAtIndex:0] doubleValue];
    double timeToStore = timeAtIndexZero + 5000;
    [times setObject:[[NSNumber alloc] initWithDouble:timeToStore] atIndexedSubscript:[times count] - 1];
    
    
    //features of the x acceleration
    values = xVector;
    mean = [self computeMean:values];
    dev = [self computeStdDev:values withDouble:mean];
    result = [self computeFFTFeatures:values];
    
    [features setObject: [[NSNumber alloc] initWithDouble:mean] atIndexedSubscript:0];
    [features setObject: [[NSNumber alloc] initWithDouble:dev] atIndexedSubscript:1];
    [features setObject: [[NSNumber alloc] initWithDouble:[self computeCrossingRate:values withDouble:mean]] atIndexedSubscript:2];
    
    //FFT
    for(int i = 3; i < 7; i++){
        [features insertObject:[result objectAtIndex:(i-3)] atIndex:i];//0-3
    }
    
    //might change where these values go in the array
    for(int i = 1; i < [values count]; i++){

        //change in x velocity from time i-1 to time i
        //[features objectAtIndex:7] += ([values objectAtIndex:(i-1)]*([times objectAtIndex:i]-[times objectAtIndex:(i-1)]));
        
        //refactored version of above ER
        featureIndex = 7;
        currentFeature = [[features objectAtIndex:featureIndex] doubleValue];
        valueAtIMinusOne = [[values objectAtIndex:i - 1] doubleValue];
        timeAtI = [[times objectAtIndex:i] doubleValue];
        timeAtIMinusOne = [[times objectAtIndex:i - 1] doubleValue];
        featureToStore = currentFeature + valueAtIMinusOne * (timeAtI - timeAtIMinusOne);
        [features setObject: [[NSNumber alloc] initWithDouble:featureToStore] atIndexedSubscript:featureIndex];


        //two times the x distance from time i-1 to time i
        //[features objectAtIndex:8] += abs([values objectAtIndex:(i-1)]*pow([times objectAtIndex:i]-[times objectAtIndex:(i-1)],2));
        
        //refactored version of above ER
        featureIndex = 8;
        currentFeature = [[features objectAtIndex:featureIndex] doubleValue];
        valueAtIMinusOne = [[values objectAtIndex:i - 1] doubleValue];
        timeAtI = [[times objectAtIndex:i] doubleValue];
        timeAtIMinusOne = [[times objectAtIndex:i - 1] doubleValue];
        featureToStore = currentFeature + abs(valueAtIMinusOne * pow(timeAtI - timeAtIMinusOne, 2.0));
        [features setObject: [[NSNumber alloc] initWithDouble:featureToStore] atIndexedSubscript:featureIndex];
    }
    
    //features of the y acceleration
    values = yVector;
    
    mean = [self computeMean:values];
    dev = [self computeStdDev:values withDouble:mean];
    result = [self computeFFTFeatures:values];
    [features setObject: [[NSNumber alloc] initWithDouble:mean] atIndexedSubscript:9];
    [features setObject: [[NSNumber alloc] initWithDouble:dev] atIndexedSubscript:10];
    [features setObject: [[NSNumber alloc] initWithDouble:[self computeCrossingRate:values withDouble:mean]] atIndexedSubscript:11];
    
    for(int i = 12; i < 16; i++){
        [features setObject:[result objectAtIndex:(i-12)] atIndexedSubscript:i];
    }
    
    //might change where these values go in the array
    for(int i=1;i<(sizeof values);i++){
        
        //change in y velocity from time i-1 to time i
        //[features objectAtIndex:16] += [values objectAtIndex:(i-1)]*([times objectAtIndex:i]- [times objectAtIndex:(i-1)]);
        
        //refactored version of above ER
        featureIndex = 16;
        currentFeature = [[features objectAtIndex:featureIndex] doubleValue];
        valueAtIMinusOne = [[values objectAtIndex:i - 1] doubleValue];
        timeAtI = [[times objectAtIndex:i] doubleValue];
        timeAtIMinusOne = [[times objectAtIndex:i - 1] doubleValue];
        featureToStore = currentFeature + valueAtIMinusOne * (timeAtI - timeAtIMinusOne);
        [features setObject: [[NSNumber alloc] initWithDouble:featureToStore] atIndexedSubscript:featureIndex];
        
        
        //two times the y distance from time i-1 to time i
        //[features objectAtIndex:17] += abs([values objectAtIndex:(i-1)]*pow([times objectAtIndex:i]-[times objectAtIndex:(i-1)],2));
        
        //refactored version of above ER
        featureIndex = 17;
        currentFeature = [[features objectAtIndex:featureIndex] doubleValue];
        valueAtIMinusOne = [[values objectAtIndex:i - 1] doubleValue];
        timeAtI = [[times objectAtIndex:i] doubleValue];
        timeAtIMinusOne = [[times objectAtIndex:i - 1] doubleValue];
        featureToStore = currentFeature + abs(valueAtIMinusOne * pow(timeAtI - timeAtIMinusOne, 2.0));
        [features setObject: [[NSNumber alloc] initWithDouble:featureToStore] atIndexedSubscript:featureIndex];

    }
    
    //features of the z acceleration
    values = zVector;
    mean = [self computeMean:values];
    dev= [self computeStdDev:values withDouble:mean];
    result = [self computeFFTFeatures:values];
    
    [features setObject: [[NSNumber alloc] initWithDouble:mean] atIndexedSubscript:18];
    [features setObject: [[NSNumber alloc] initWithDouble:dev] atIndexedSubscript:19];
    [features setObject: [[NSNumber alloc] initWithDouble:[self computeCrossingRate:values withDouble:mean]] atIndexedSubscript:20];
    
    for(int i = 21; i < 25; i++){
        [features setObject:[result objectAtIndex:(i-21)] atIndexedSubscript:i];
    }
    
    //may change where these values go in the array
    for(int i=1;i< [values count]; i++){
        
        //change in z velocity from time i-1 to time i
        //[features objectAtIndex:25] += [values objectAtIndex:(i-1)]*([times objectAtIndex:i]- [times objectAtIndex:(i-1)]);
        
        //refactored version of above ER
        featureIndex = 25;
        currentFeature = [[features objectAtIndex:featureIndex] doubleValue];
        valueAtIMinusOne = [[values objectAtIndex:i - 1] doubleValue];
        timeAtI = [[times objectAtIndex:i] doubleValue];
        timeAtIMinusOne = [[times objectAtIndex:i - 1] doubleValue];
        featureToStore = currentFeature + valueAtIMinusOne * (timeAtI - timeAtIMinusOne);
        [features setObject: [[NSNumber alloc] initWithDouble:featureToStore] atIndexedSubscript:featureIndex];
        
        
        //two times the z distance from time i-1 to time i
        //[features objectAtIndex:26] += abs([values objectAtIndex:(i-1)]*pow([times objectAtIndex:i]-[times objectAtIndex:(i-1)],2));
        
        //refactored version of above ER
        featureIndex = 26;
        currentFeature = [[features objectAtIndex:featureIndex] doubleValue];
        valueAtIMinusOne = [[values objectAtIndex:i - 1] doubleValue];
        timeAtI = [[times objectAtIndex:i] doubleValue];
        timeAtIMinusOne = [[times objectAtIndex:i - 1] doubleValue];
        featureToStore = currentFeature + abs(valueAtIMinusOne * pow(timeAtI - timeAtIMinusOne, 2.0));
        [features setObject: [[NSNumber alloc] initWithDouble:featureToStore] atIndexedSubscript:featureIndex];

    }

    //features of the speed
    values = speedVector;
    mean = [self computeMean:values];
    dev = [self computeStdDev:values withDouble:mean];
    result = [self computeFFTFeatures:values];
    
    [features setObject: [[NSNumber alloc] initWithDouble:mean] atIndexedSubscript:27];
    [features setObject: [[NSNumber alloc] initWithDouble:dev] atIndexedSubscript:28];
    [features setObject: [[NSNumber alloc] initWithDouble:[self computeCrossingRate:values withDouble:mean]] atIndexedSubscript:29];
    for(int i=30;i<33;i++){
        [features setObject:[result objectAtIndex:(i-30)] atIndexedSubscript:i];
    }
    
    //features of the energy
    values = energyVector;
    mean = [self computeMean:values];
    dev = [self computeStdDev:values withDouble:mean];
    result = [self computeFFTFeatures:values];

    [features setObject: [[NSNumber alloc] initWithDouble:mean] atIndexedSubscript:33];
    [features setObject: [[NSNumber alloc] initWithDouble:dev] atIndexedSubscript:34];
    [features setObject: [[NSNumber alloc] initWithDouble:[self computeCrossingRate:values withDouble:mean]] atIndexedSubscript:35];
    for(int i = 36; i < 40; i++){
        [features setObject:[result objectAtIndex:(i - 36)] atIndexedSubscript: i];
    }
    
    //features of energyXY
    values = energyXYVector;
    mean = [self computeMean:values];
    dev = [self computeStdDev:values withDouble:mean];
    
    [features setObject: [[NSNumber alloc] initWithDouble:mean] atIndexedSubscript:40];
    [features setObject: [[NSNumber alloc] initWithDouble:dev] atIndexedSubscript:41];
    [features setObject: [[NSNumber alloc] initWithDouble:[self computeCrossingRate:values withDouble:mean]] atIndexedSubscript:42];

    
    [self clearValues];
    return features;
}

- (void)clearValues {
    [xVector removeAllObjects];
    [yVector removeAllObjects];
    [zVector removeAllObjects];
    [speedVector removeAllObjects];
    [energyVector removeAllObjects];
    [energyXYVector removeAllObjects];
    [timeVector removeAllObjects];
}

- (double)computeCrossingRate:(NSMutableArray *)values withDouble:(double)mean {
    if ([values count] <= 1) return 0.0;
    double rate = 0.0;
    for (int i = 0; i < (int) [values count]; i++) {
        if (i > 0 && (([[values objectAtIndex:i] doubleValue] > mean && [[values objectAtIndex:(i-1)] doubleValue] < mean) || ([[values objectAtIndex:i] doubleValue] < mean && [[values objectAtIndex:i] doubleValue] > mean)))
            rate = rate + 1;
    }
    rate = rate / ((int) [values count] - 1);
    return rate;
}

- (NSMutableArray *)computeFFTFeatures:(NSMutableArray *)values {
    int i, j, k, n1, n2, a, n = 1, m = 0;
    double c, s, t1, t2;
    NSMutableArray  *xValues = [[NSMutableArray alloc] init];
    NSMutableArray  *yValues = [[NSMutableArray alloc] init];
    NSMutableArray  *cosValues = [[NSMutableArray alloc] init];
    NSMutableArray  *sinValues = [[NSMutableArray alloc] init];
    
    for (m = 0; ; m++) {
        if (n >= [values count]){
            break;
        }
        
        n = n * 2;
    }
    
    for (i = 0; i < [values count]; i++){
        [xValues setObject:[values objectAtIndex:i] atIndexedSubscript:i];
    }
    
    for (i = 0; i < n / 2; i++) {
        [cosValues setObject: [[NSNumber alloc] initWithDouble: cos(-2 * M_PI * i / n)] atIndexedSubscript:i];
        [sinValues setObject: [[NSNumber alloc] initWithDouble: sin(-2 * M_PI * i / n)] atIndexedSubscript:i];
    }
    
    // Bit-reverse
    j = 0;
    n2 = n / 2;
    for (i = 1; i < n - 1; i++) {
        n1 = n2;
        while (j >= n1) {
            j = j - n1;
            n1 = n1 / 2;
        }
        j = j + n1;
        if (i < j) {
            //rewriting (ER)
            t1 = [[xValues objectAtIndex:i] doubleValue];
            //[xValues objectAtIndex:i] = [xValues objectAtIndex:j];
            //[xValues objectAtIndex:j] = t1;
            [xValues setObject:[xValues objectAtIndex:j] atIndexedSubscript:i];
            [xValues setObject:[[NSNumber alloc] initWithDouble:t1] atIndexedSubscript:j];
            
            t1 = [[yValues objectAtIndex:i] doubleValue];
            //[yValues objectAtIndex:i] = [y objectAtIndex:j];
            //[yValues objectAtIndex:j] = t1;
            [yValues setObject:[yValues objectAtIndex:j] atIndexedSubscript:i];
            [yValues setObject:[[NSNumber alloc] initWithDouble:t1] atIndexedSubscript:j];
        }
    }
    // FFT
    n1 = 0;
    n2 = 1;
    for (i = 0; i < m; i++) {
        n1 = n2;
        n2 = n2 + n2;
        a = 0;
        for (j = 0; j < n1; j++) {
            c = [[cosValues objectAtIndex:a] doubleValue];
            s = [[sinValues objectAtIndex:a] doubleValue];
            
            a += 1 << (m - i - 1); //http://stackoverflow.com/questions/8658495/operator-in-objective-c-enum
            for (k = j; k < n; k = k + n2) {
                t1 = c * [[xValues objectAtIndex:k + n1] doubleValue] - s * [[yValues objectAtIndex:k + n1] doubleValue];
                t2 = s * [[xValues objectAtIndex: k + n1] doubleValue] + c * [[yValues objectAtIndex:k + n1] doubleValue];
                
                //[xValues objectAtIndex:(k+n1)] = [x objectAtIndex:k] - t1;
                //[yValues objectAtIndex:(k+n1)] = [y objectAtIndex:k] - t2;
                //[xValues objectAtIndex:k] = [x objectAtIndex:k] + t1;
                //[yValues objectAtIndex:k] = [y objectAtIndex:k] + t2;
                
                [xValues setObject:[[NSNumber alloc] initWithDouble:[[xValues objectAtIndex:k] doubleValue] - t1] atIndexedSubscript:k + n1];
                [yValues setObject:[[NSNumber alloc] initWithDouble:[[yValues objectAtIndex:k] doubleValue] - t2] atIndexedSubscript:k + n1];
                [xValues setObject:[[NSNumber alloc] initWithDouble:[[xValues objectAtIndex:k] doubleValue] + t1] atIndexedSubscript:k];
                [yValues setObject:[[NSNumber alloc] initWithDouble:[[yValues objectAtIndex:k] doubleValue] + t2] atIndexedSubscript:k];
                
            }
        }
    }
    
    //still java need to convert
//Coefficient coeffs[] = new Coefficient[x.length];
    NSMutableArray *coeffs = [[NSMutableArray alloc] init];
    
    for(i=0;i<xValues.count;i++){
        //(x[i],y[i],(360.0*i)/coeffs.length);
        coeffs[i] = [[Coefficient alloc] initWithX: ((NSNumber *)xValues[i]).doubleValue  Y:((NSNumber *)yValues[i]).doubleValue frequency:((360.0*i)/xValues.count)];
    }
    
    //Arrays.sort(coeffs);
    NSArray *sortedCoeffs= [coeffs sortedArrayUsingComparator:^(Coefficient* obj1, Coefficient* obj2){
        if((obj1.absoluteValue - obj2.absoluteValue) > 0){
        return 1;
    }
        
    else if((obj1.absoluteValue - obj2.absoluteValue) < 0){
        return -1;
    }
        
    else{
        return 0;
    }
        
} ];
    coeffs= [[NSMutableArray alloc] initWithArray:sortedCoeffs];
    Boolean NEW = false;
    NSMutableArray* coeffs2 = [[NSMutableArray alloc] init];
    NSMutableArray *result= [[NSMutableArray alloc] init];
    
    for(i = 0; i < xValues.count; i++){
        //coeffs2[i] = coeffs[xValues.count-1-i];
        [coeffs2 setObject:coeffs[xValues.count-1-i] atIndexedSubscript:i];
    }
    
    int len = (coeffs2.count > 5 ? 5 : coeffs2.count);
    Coefficient *coefficientAtJ;
    Coefficient *coefficientAtJMinusOne;
    for(i = 0, j = 0; i < len; i++, j++){
        coefficientAtJ = [coeffs2 objectAtIndex:j];
        coefficientAtJMinusOne = [coeffs2 objectAtIndex:j - 1];
        
        if(NEW && i > 0 && j < coeffs2.count && abs(coefficientAtJ.absoluteValue - coefficientAtJMinusOne.absoluteValue) <=0.00001){
            i--;
            continue;
        }
        if(NEW && j>=coeffs2.count)
            break;
//        result[2*i] =[[NSNumber alloc]initWithDouble: ((Coefficient*) coeffs2[j]).absoluteValue];
//        result[2*i+1] = [[NSNumber alloc]initWithDouble: ((Coefficient*) coeffs2[j]).freq];
        [result setObject:[[NSNumber alloc] initWithDouble: coefficientAtJ.absoluteValue] atIndexedSubscript:2 * i];
        [result setObject:[[NSNumber alloc] initWithDouble: coefficientAtJMinusOne.freq] atIndexedSubscript:2 * 1 + 1];
    }
    return result;
}


- (double)computeMean:(NSMutableArray *)values {
    double mean = 0.0;
    for (int i = 0; i < values.count; i++)
        mean += ((NSNumber*)[values objectAtIndex:i]).doubleValue;
    return mean / (int) [values count];
}

- (double)computeStdDev:(NSMutableArray *)values
                                    withDouble:(double)mean {
    double dev = 0.0;
    double diff = 0.0;
    for (int i = 0; i <  [values count]; i++) {
        diff = [[values objectAtIndex:i] doubleValue] - mean;
        dev += diff * diff;
    }
    return sqrt(dev/[values count]);
}

- (void)addValuesWithAccX:(double)acc_x
                 withAccY:(double)acc_y
                 withAccZ:(double)acc_z
            withVectSpeed:(double)vectorial_speed {
    [xVector addObject:[[NSNumber alloc] initWithDouble:acc_x]];
    [yVector addObject:[[NSNumber alloc] initWithDouble:acc_y]];
    [zVector addObject:[[NSNumber alloc] initWithDouble:acc_z]];
    [speedVector addObject:[[NSNumber alloc] initWithDouble:vectorial_speed]];
    [energyXYVector addObject:[[NSNumber alloc] initWithDouble:sqrt(acc_x * acc_x * acc_y * acc_y)]];
    
}

- (void)addEnergyValuesWithAccX:(double)acc_x
                       withAccY:(double)acc_y
                       withAccZ:(double)acc_z{
        [energyVector addObject:[[NSNumber alloc] initWithDouble:(sqrt(acc_x*acc_y*acc_z))]];
}

- (void)addTime:(double)time {
    [timeVector addObject:[[NSNumber alloc] initWithDouble:time]];
}

@end


