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


-(NSArray *) extractFeaturesWithFeatures: (long) timestamp ortAcX :(double) ortAccX ortAcY: (double) ortAccY ortAcZ: (double) ortAccZ acX:
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
    
    return extractFeatures();
}

-(NSArray *) extractFeatures {
    NSArray* features = [[NSArray alloc]initWithObjects:0.0,0.0, nil;
                         for(int i=0;i<[features count];i++)
                         features[i] = 0.0;
                         
                         Long[] times = timeVector.toArray(new Long[0]);
                         times[times.length-1] = times[0]+5000;
                         
                         
                         //features of the x acceleration
                         NSArray* values = xVector.toArray(new Double[0]);
                         
                         double mean = computeMean(values);
                         double dev = computeStdDev(values,mean);
                         double result[] = computeFFTFeatures(values);
                         
                         features[0] = mean;
                         features[1] = dev;
                         features[2] = computeCrossingRate(values,mean);
                         //FFT
                         for(int i=3;i<7;i++)
                         features[i] = result[i-3];//0-3
                         //might change where these values go in the array
                         for(int i=1;i<values.length;i++){
                             //change in x velocity from time i-1 to time i
                             features[7] += (values[i-1]*(times[i]-times[i-1]));
                             //two times the x distance from time i-1 to time i
                             features[8] += Math.abs(values[i-1]*Math.pow(times[i]-times[i-1],2));
                         }
                         
                         //features of the y acceleration
                         values = yVector.toArray(new Double[0]);
                         
                         mean = computeMean(values);
                         dev = computeStdDev(values,mean);
                         result = computeFFTFeatures(values);
                         features[9] = mean;
                         features[10] = dev;
                         features[11] = computeCrossingRate(values,mean);
                         for(int i=12;i<16;i++)
                         features[i] = result[i-12];
                         //might change where these values go in the array
                         for(int i=1;i<values.length;i++){
                             //change in y velocity from time i-1 to time i
                             features[16] += values[i-1]*(times[i]-times[i-1]);
                             //two times the y distance from time i-1 to time i
                             features[17]  += Math.abs(values[i-1]*Math.pow(times[i]-times[i-1],2));
                         }
                         
                         //features of the z acceleration
                         values = zVector.toArray(new Double[0]);
                         
                         mean = computeMean(values);
                         dev = computeStdDev(values,mean);
                         result = computeFFTFeatures(values);
                         features[18] = mean;
                         features[19] = dev;
                         features[20] = computeCrossingRate(values,mean);
                         for(int i=21;i<25;i++)
                         features[i] = result[i-21];
                         //may change where these values go in the array
                         for(int i=1;i<values.length;i++){
                             //change in z velocity from time i-1 to time i
                             features[25] += values[i-1]*(times[i]-times[i-1]);
                             //two times the z distance from time i-1 to time i
                             features[26] += Math.abs(values[i-1]*(times[i]-times[i-1]));
                         }
                         
                         //features of the speed
                         values = speedVector.toArray(new Double[0]);
                         mean = computeMean(values);
                         dev = computeStdDev(values,mean);
                         result = computeFFTFeatures(values);
                         features[27] = mean;
                         features[28] = dev;
                         features[29] = computeCrossingRate(values,mean);
                         for(int i=30;i<33;i++)
                         features[i] = result[i-30];
                         
                         //features of the energy
                         values = energyVector.toArray(new Double[0]);
                         mean = computeMean(values);
                         dev = computeStdDev(values,mean);
                         result = computeFFTFeatures(values);
                         features[33] = mean;
                         features[34] = dev;
                         features[35] = computeCrossingRate(values,mean);
                         for(int i=36;i<40;i++)
                         features[i] = result[i-36];
                         
                         //features of energyXY
                         values = energyXYVector.toArray(new Double[0]);
                         mean = computeMean(values);
                         dev = computeStdDev(values,mean);
                         features[40] = mean;
                         features[41] = dev;
                         features[42] = computeCrossingRate(values,mean);
                         
                         clearValues();
                         return features;
                         }
                         
                         -(void) clearValues{
                             xVector.clear();
                             yVector.clear();
                             zVector.clear();
                             speedVector.clear();
                             energyVector.clear();
                             energyXYVector.clear();
                             timeVector.clear();
                         }
                         @end
                         
                         
