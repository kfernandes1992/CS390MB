//
//  ActivityFeatureExtractor.m
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/18/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "ActivityFeatureExtractor.h"

@interface Coefficient : NSObject{
    double re;
    double im;
    double freq;
    double abs;
}
@end

@implementation Coefficient

@synthesize re, im, freq, abs;

- (id)initWithX:(double) x Y:(double) y Z:(double) z
{
    self = [super init];
    if(self)
    {
        re = x;
        im = y;
        freq = frequency;
        abs = hypot(x,y);
    }
}

-(int) compareTo: c
{
    if((this.abs - c.abs)>0.0)
        return 1;
}

@end

@implementation ActivityFeatureExtractor
@synthesize xVector, yVector, zVector,speedVector, timeVector, energyVector,energyXYVector,WINDOW_IN_MILLISEC, lastAccX, lastAccY, lastAccZ;

- (id)init
{
    self = [super init];
    if (self)
    {
        WINDOW_IN_MILLISEC=5000;
        lastAccZ=0;
        lastAccZ=0;
        lastAccZ=0;
        
    }
    return self;
}


-(NSMutableArray *) extractFeaturesWithFeatures: (long) timestamp ortAcX :(double) ortAccX ortAcY: (double) ortAccY ortAcZ: (double) ortAccZ acX:
(double) accX acY: (double) accY acZ: (double) accZ {
    
    [self addTime:timestamp];
    double speed = sqrt(pow(accX-lastAccX,2)+pow(accY-lastAccY,2)+pow(accZ-lastAccZ,2));
    [self addValues:ortAccX :ortAccY :ortAccZ :speed];
    [self addEnergyValues:ortAccX :ortAccY :ortAccZ];
    lastAccX = accX; lastAccY = accY; lastAccZ = accZ;
    //Return null if features not extracted
     if((timestamp-[timeVector objectAtIndex:0])< WINDOW_IN_MILLISEC)
     return nil;
     
     if([xVector count] == 0 || [sizeof xVector]<2)
     return nil;
     
    
    return [self extractFeatures];
}

-(NSMutableArray *) extractFeatures {
    NSNumber* zero = [(NSNumber *)numberWithLong:(long)0.0];
    //accepts objects only so could use NSNumber *tempNumber = [[NSNumber alloc] initWithDouble:?I don't know what to put here?] Why does initWithObjects accept two doubles?
    NSMutableArray* features = [[NSMutableArray alloc]initWithObjects:zero, zero, nil];
    for(int i=0;i< (int)[features count];i++)
        features[i] = zero;
    
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
        [features insertObject:[result objectAtIndex:(i-3)] atIndex:i];//0-3
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

- (double)computeCrossingRate:(NSMutableArray *)values withDouble:(double)mean {
    if ((int) [((NSMutableArray *) values) count] <= 1) return 0.0;
    double rate = 0.0;
    for (int i = 0; i < (int) [values count]; i++) {
        if (i > 0 && (([values objectAtIndex:i]>mean && [values objectAtIndex:(i-1)]<mean) || ([values objectAtIndex:i]<mean && [values objectAtIndex:i]>mean)))
            rate = rate + 1;
    }
    rate = rate / ((int) [values count] - 1);
    return rate;
}

- (NSMutableArray *)computeFFTFeatures:(NSMutableArray *)values {
    int i, j, k, n1, n2, a;
    double c, s, t1, t2;
    int n = 1, m = 0;
    for (m = 0; ; m++) {
        if (n >= (int) [((NSMutableArray *) values) count]) break;
        n = n * 2;
    }
    NSMutableArray *x = [NSMutableArray arrayWithLength:n];
    NSMutableArray *y = [NSMutableArray arrayWithLength:n];
    for (i = 0; i < (int) [((NSMutableArray *) values) count]; i++)
        [x objectAtIndex:i] = [values objectAtIndex:i];
    
    NSMutableArray *cos = [NSMutableArray arrayWithLength:(n/2)];
    NSMutableArray *sin = [NSMutableArray arrayWithLength:(n/2)];
    for (i = 0; i < n / 2; i++) {
        [cos objectAtIndex:i] = cos(-2*M_PI*i/n);
        [sin objectAtIndex:i] = sin(-2*M_PI*i/n);
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
            t1 = [x objectAtIndex:i];
            [x objectAtIndex:i] = [x objectAtIndex:j];
            [x objectAtIndex:j] = t1;
            t1 = [y objectAtIndex:i];
            [y objectAtIndex:i] = [y objectAtIndex:j];
            [y objectAtIndex:j] = t1;
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
            c = [cos objectAtIndex:a];
            s = [sin objectAtIndex:a];
            a += 1 << (m - i - 1);
            for (k = j; k < n; k = k + n2) {
                t1 = c * [x objectAtIndex:(k+n1)] - s*[y objectAtIndex:(k+n1)];
                t2 = s*[x objectAtIndex:(k+n1)] + c* [y objectAtIndex:(k+n1)];
                [x objectAtIndex:(k+n1)] = [x objectAtIndex:k] - t1;
                [y objectAtIndex:(k+n1)] = [y objectAtIndex:k] - t2;
                [x objectAtIndex:k] = [x objectAtIndex:k] + t1;
                [y objectAtIndex:k] = [y objectAtIndex:k] + t2;
            }
        }
    }
    
    //still java need to convert
    Coefficient coeffs[] = new Coefficient[x.length];
    for(i=0;i<coeffs.length;i++)
        coeffs[i] = new Coefficient(x[i],y[i],(360.0*i)/coeffs.length);
    Arrays.sort(coeffs);
    
    Coefficient coeffs2[] = new Coefficient[x.length];
    for(i=0;i<x.length;i++)
        coeffs2[i] = coeffs[x.length-1-i];
    double result[] = new double[10];
    int len = (coeffs2.length>5?5:coeffs2.length);
    boolean NEW = false;
    for(i=0,j=0;i<len;i++,j++){
        if(NEW && i>0 && j<coeffs2.length && Math.abs(coeffs2[j].abs-coeffs2[j-1].abs)<=0.00001){
            i--;
            continue;
        }
        if(NEW && j>=coeffs2.length)
            break;
        result[2*i] = coeffs2[j].abs;
        result[2*i+1] = coeffs2[j].freq;
    }
    return result;
}


- (double)computeMean:(NSMutableArray *)values {
    double mean = 0.0;
    for (int i = 0; i < (int) [((NSMutableArray *) values) count]; i++)
        mean += [values objectAtIndex:i];
    return mean / (int) [values count];
}

- (double)computeStdDev:(NSMutableArray *)values
                                    withDouble:(double)mean {
    double dev = 0.0;
    double diff = 0.0;
    for (int i = 0; i < (int) [((NSMutableArray *) values) count]; i++) {
        diff = [values objectAtIndex:i] - mean;
        dev += diff * diff;
    }
    return [sqrt:(dev/(int)[values count])];
}

- (void)addValues:(double)acc_x
                 withDouble:(double)acc_y
                 withDouble:(double)acc_z
                 withDouble:(double)vectorial_speed {
    [xVector addObject:acc_x];
    [yVector addObject:acc_y];
    [zVector addObject:acc_z];
    [speedVector addObject:vectorial_speed];
    [energyXYVector addObject:(sqrt(acc_x*acc_x*acc_y*acc_y))];
    
}

- (void)addEnergyValues:(double)acc_x
                       withDouble:(double)acc_y
                       withDouble:(double)acc_z {
        [energyVector addObject:(sqrt(acc_x*acc_y*acc_z))];
}

- (void)addTime:(long)time {
    [timeVector addObject:time];
}

@end


