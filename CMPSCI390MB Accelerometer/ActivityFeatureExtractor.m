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
    if (self) {
        WINDOW_IN_MILLISEC=5000;
        lastAccZ=0;
        lastAccZ=0;
        lastAccZ=0;
        
    }
    return self;
}


-(NSMutableArray *) extractFeaturesWithFeatures: (long) timestamp ortAcX :(double) ortAccX ortAcY: (double) ortAccY ortAcZ: (double) ortAccZ acX:
(double) accX acY: (double) accY acZ: (double) accZ {
    
    //TODO: addTime(timestamp);
    double speed = sqrt(pow(accX-lastAccX,2)+pow(accY-lastAccY,2)+pow(accZ-lastAccZ,2));
    //TODO: addValues(ortAccX,ortAccY,ortAccZ, speed);
    //TODO: addEnergyValues(ortAccX,ortAccY,ortAccZ);
    lastAccX = accX; lastAccY = accY; lastAccZ = accZ;
    /*Return null if features not extracted
     if((timestamp-timeVector.get(0))< WINDOW_IN_MILLISEC)
     return null;
     
     if(xVector.isEmpty()||xVector.size()<2)
     return null;
     */
    
    return [self extractFeatures];
}

-(NSMutableArray *) extractFeatures {
    //accepts objects only so could use NSNumber *tempNumber = [[NSNumber alloc] initWithDouble:?I don't know what to put here?] Why does initWithObjects accept two doubles?
    NSMutableArray* features = [[NSMutableArray alloc]initWithObjects:0.0, 0.0, nil];
    for(int i=0;i< (int)[features count];i++)
        features[i] = 0.0;
    
    NSMutableArray* times = timeVector;
    [times objectAtIndex:[times count]-1] = [times objectAtIndex:0]+5000;
    
    
    //features of the x acceleration
    NSMutableArray* values = xVector;
    
    double mean = [self computeMean:values];
    double dev = [self computeStdDev:values :mean];
    NSMutableArray* result = [self computeFFTFeatures:values];
    
    [features objectAtIndex:0] = mean;
    [features objectAtIndex:1] = dev;
    [features objectAtIndex:2] = [self computeCrossingRate:values :mean];
    //FFT
    for(int i=3;i<7;i++)
        [features objectAtIndex:i] = [result objectAtIndex:(i-3)];//0-3
    //might change where these values go in the array
    for(int i=1;i<(sizeof values);i++){
        //change in x velocity from time i-1 to time i
        [features objectAtIndex:7] += ([values objectAtIndex:(i-1)]*([times objectAtIndex:i]-[times objectAtIndex:(i-1)]));
        //two times the x distance from time i-1 to time i
        [features objectAtIndex:8] += abs([values objectAtIndex:(i-1)]*pow([times objectAtIndex:i]-[times objectAtIndex:(i-1)],2));
    }
    
    //features of the y acceleration
    values = yVector;
    
    mean = [computeMean:values];
    dev = [computeStdDev:values :mean];
    result = [computeFFTFeatures:values];
    [features objectAtIndex:9] = mean;
    [features objectAtIndex:10] = dev;
    [features objectAtIndex:11] = [computeCrossingRate:values :mean];
    for(int i=12;i<16;i++)
        [features objectAtIndex:i] = [result objectAtIndex:(i-12)];
    //might change where these values go in the array
    for(int i=1;i<(sizeof values);i++){
        //change in y velocity from time i-1 to time i
        [features objectAtIndex:16] += [values objectAtIndex:(i-1)]*([times objectAtIndex:i]- [times objectAtIndex:(i-1)]);
        //two times the y distance from time i-1 to time i
        [features objectAtIndex:17] += abs([values objectAtIndex:(i-1)]*pow([times objectAtIndex:i]-[times objectAtIndex:(i-1)],2));
    }
    
    //features of the z acceleration
    values = zVector;
    
    mean = [computeMean:values];
    dev = [computeStdDev:values :mean];
    result = [computeFFTFeatures:values];
    [features objectAtIndex:18] = mean;
    [features objectAtIndex:19] = dev;
    [features objectAtIndex:20] = [computeCrossingRate:values :mean];
    for(int i=21;i<25;i++)
        [features objectAtIndex:i] = [result objectAtIndex:(i-21)];
    //may change where these values go in the array
    for(int i=1;i<values.length;i++){
        //change in z velocity from time i-1 to time i
        [features objectAtIndex:25] += [values objectAtIndex:(i-1)]*([times objectAtIndex:i]- [times objectAtIndex:(i-1)]);
        //two times the z distance from time i-1 to time i
        [features objectAtIndex:26] += abs([values objectAtIndex:(i-1)]*pow([times objectAtIndex:i]-[times objectAtIndex:(i-1)],2));
    }
    
    //features of the speed
    values = speedVector;
    mean = [computeMean:values];
    dev = [computeStdDev:values :mean];
    result = [computeFFTFeatures:values];
    [features objectAtIndex:27] = mean;
    [features objectAtIndex:28] = dev;
    [features objectAtIndex:29] = [computeCrossingRate:values :mean];
    for(int i=30;i<33;i++)
        [features objectAtIndex:i] = [result objectAtIndex:(i-30)];
    
    //features of the energy
    values = energyVector;
    mean = [computeMean:values];
    dev = [computeStdDev:values :mean];
    result = [computeFFTFeatures:values];
    [features objectAtIndex:33] = mean;
    [features objectAtIndex:34] = dev;
    [features objectAtIndex:35] = [computeCrossingRate:values :mean];
    for(int i=36;i<40;i++)
        [features objectAtIndex:i] = [result objectAtIndex:(i-36)];
    
    //features of energyXY
    values = energyXYVector;
    mean = [computeMean:values];
    dev = [computeStdDev:values :mean];
    [features objectAtIndex:40] = mean;
    [features objectAtIndex:41] = dev;
    [features objectAtIndex:42] = [computeCrossingRate:values :mean];
    
    clearValues();
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

- (double)computeCrossingRateWithJavaLangDoubleArray:(IOSObjectArray *)values
                                          withDouble:(double)mean {
    if ((int) [((IOSObjectArray *) nil_chk(values)) count] <= 1) return 0.0;
    double rate = 0.0;
    for (int i = 0; i < (int) [values count]; i++) {
        if (i > 0 && (([((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i))) doubleValue] > mean && [((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i - 1))) doubleValue] < mean) || ([((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i))) doubleValue] < mean && [((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i))) doubleValue] > mean))) rate = rate + 1;
    }
    rate = rate / ((int) [values count] - 1);
    return rate;
}

- (IOSDoubleArray *)computeFFTFeaturesWithJavaLangDoubleArray:(IOSObjectArray *)values {
    int i, j, k, n1, n2, a;
    double c, s, t1, t2;
    int n = 1, m = 0;
    for (m = 0; ; m++) {
        if (n >= (int) [((IOSObjectArray *) nil_chk(values)) count]) break;
        n = n * 2;
    }
    IOSDoubleArray *x = [IOSDoubleArray arrayWithLength:n];
    IOSDoubleArray *y = [IOSDoubleArray arrayWithLength:n];
    for (i = 0; i < (int) [((IOSObjectArray *) nil_chk(values)) count]; i++) (*IOSDoubleArray_GetRef(x, i)) = [((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i))) doubleValue];
    IOSDoubleArray *cos = [IOSDoubleArray arrayWithLength:n / 2];
    IOSDoubleArray *sin = [IOSDoubleArray arrayWithLength:n / 2];
    for (i = 0; i < n / 2; i++) {
        (*IOSDoubleArray_GetRef(cos, i)) = [JavaLangMath cosWithDouble:-2 * JavaLangMath_PI * i / n];
        (*IOSDoubleArray_GetRef(sin, i)) = [JavaLangMath sinWithDouble:-2 * JavaLangMath_PI * i / n];
    }
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
            t1 = IOSDoubleArray_Get(x, i);
            (*IOSDoubleArray_GetRef(x, i)) = IOSDoubleArray_Get(x, j);
            (*IOSDoubleArray_GetRef(x, j)) = t1;
            t1 = IOSDoubleArray_Get(y, i);
            (*IOSDoubleArray_GetRef(y, i)) = IOSDoubleArray_Get(y, j);
            (*IOSDoubleArray_GetRef(y, j)) = t1;
        }
    }
    n1 = 0;
    n2 = 1;
    for (i = 0; i < m; i++) {
        n1 = n2;
        n2 = n2 + n2;
        a = 0;
        for (j = 0; j < n1; j++) {
            c = IOSDoubleArray_Get(cos, a);
            s = IOSDoubleArray_Get(sin, a);
            a += 1 << (m - i - 1);
            for (k = j; k < n; k = k + n2) {
                t1 = c * IOSDoubleArray_Get(x, k + n1) - s * IOSDoubleArray_Get(y, k + n1);
                t2 = s * IOSDoubleArray_Get(x, k + n1) + c * IOSDoubleArray_Get(y, k + n1);
                (*IOSDoubleArray_GetRef(x, k + n1)) = IOSDoubleArray_Get(x, k) - t1;
                (*IOSDoubleArray_GetRef(y, k + n1)) = IOSDoubleArray_Get(y, k) - t2;
                (*IOSDoubleArray_GetRef(x, k)) = IOSDoubleArray_Get(x, k) + t1;
                (*IOSDoubleArray_GetRef(y, k)) = IOSDoubleArray_Get(y, k) + t2;
            }
        }
    }
    IOSObjectArray *coeffs = [IOSObjectArray arrayWithLength:(int) [x count] type:[IOSClass classWithClass:[OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient class]]];
    for (i = 0; i < (int) [coeffs count]; i++) IOSObjectArray_Set(coeffs, i, [[[OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient alloc] initWithOrgMstreamStreamEdaActivityFeatureExtractor:self withDouble:IOSDoubleArray_Get(x, i) withDouble:IOSDoubleArray_Get(y, i) withDouble:(360.0 * i) / (int) [coeffs count]] autorelease]);
    [JavaUtilArrays sortWithNSObjectArray:coeffs];
    IOSObjectArray *coeffs2 = [IOSObjectArray arrayWithLength:(int) [x count] type:[IOSClass classWithClass:[OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient class]]];
    for (i = 0; i < (int) [x count]; i++) IOSObjectArray_Set(coeffs2, i, IOSObjectArray_Get(coeffs, (int) [x count] - 1 - i));
    IOSDoubleArray *result = [IOSDoubleArray arrayWithLength:10];
    int len = ((int) [coeffs2 count] > 5 ? 5 : (int) [coeffs2 count]);
    BOOL NEW = NO;
    for (i = 0, j = 0; i < len; i++, j++) {
        if (NEW && i > 0 && j < (int) [coeffs2 count] && [JavaLangMath absWithDouble:((OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient *) nil_chk(IOSObjectArray_Get(coeffs2, j)))->abs_ - ((OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient *) nil_chk(IOSObjectArray_Get(coeffs2, j - 1)))->abs_] <= 0.00001) {
            i--;
            continue;
        }
        if (NEW && j >= (int) [coeffs2 count]) break;
        (*IOSDoubleArray_GetRef(result, 2 * i)) = ((OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient *) nil_chk(IOSObjectArray_Get(coeffs2, j)))->abs_;
        (*IOSDoubleArray_GetRef(result, 2 * i + 1)) = ((OrgMstreamStreamEdaActivityFeatureExtractor_Coefficient *) nil_chk(IOSObjectArray_Get(coeffs2, j)))->freq_;
    }
    return result;
}

- (double)computeMeanWithJavaLangDoubleArray:(IOSObjectArray *)values {
    double mean = 0.0;
    for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(values)) count]; i++) mean += [((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i))) doubleValue];
    return mean / (int) [values count];
}

- (double)computeStdDevWithJavaLangDoubleArray:(IOSObjectArray *)values
                                    withDouble:(double)mean {
    double dev = 0.0;
    double diff = 0.0;
    for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(values)) count]; i++) {
        diff = [((JavaLangDouble *) nil_chk(IOSObjectArray_Get(values, i))) doubleValue] - mean;
        dev += diff * diff;
    }
    return [JavaLangMath sqrtWithDouble:dev / (int) [values count]];
}

- (void)addValuesWithDouble:(double)acc_x
                 withDouble:(double)acc_y
                 withDouble:(double)acc_z
                 withDouble:(double)vectorial_speed {
    [((NSMutableArray *) nil_chk(xVector_)) addWithId:[JavaLangDouble valueOfWithDouble:acc_x]];
    [((NSMutableArray *) nil_chk(yVector_)) addWithId:[JavaLangDouble valueOfWithDouble:acc_y]];
    [((NSMutableArray *) nil_chk(zVector_)) addWithId:[JavaLangDouble valueOfWithDouble:acc_z]];
    [((NSMutableArray *) nil_chk(speedVector_)) addWithId:[JavaLangDouble valueOfWithDouble:vectorial_speed]];
    [((NSMutableArray *) nil_chk(energyXYVector_)) addWithId:[JavaLangDouble valueOfWithDouble:[JavaLangMath sqrtWithDouble:acc_x * acc_x + acc_y * acc_y]]];
}

- (void)addEnergyValuesWithDouble:(double)acc_x
                       withDouble:(double)acc_y
                       withDouble:(double)acc_z {
    [((NSMutableArray *) nil_chk(energyVector_)) addWithId:[JavaLangDouble valueOfWithDouble:[JavaLangMath sqrtWithDouble:acc_x * acc_x + acc_y * acc_y + acc_z * acc_z]]];
}

- (void)addTimeWithLong:(long long int)time {
    [((NSMutableArray *) nil_chk(timeVector_)) addWithId:[JavaLangLong valueOfWithLong:time]];
}

@end

