//
//  ActivityFeatureExtractor.h
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/18/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coefficient.h"

@interface ActivityFeatureExtractor : NSObject

@property (atomic, strong) NSMutableArray* xVector;
@property (atomic,strong) NSMutableArray* yVector;
@property (atomic, strong) NSMutableArray* zVector;
@property (atomic, strong) NSMutableArray* speedVector;
@property (atomic, strong) NSMutableArray* energyVector;
@property (atomic, strong) NSMutableArray* energyXYVector;
@property (atomic, strong) NSMutableArray* timeVector;
@property long WINDOW_IN_MILLISEC;
@property double lastAccX;
@property double lastAccY;
@property double lastAccZ;


-(NSMutableArray *) extractFeaturesWithFeatures: (double) timestamp ortAcX :(double) ortAccX ortAcY: (double) ortAccY ortAcZ: (double) ortAccZ acX:
(double) accX acY: (double) accY acZ: (double) accZ;
-(NSMutableArray *) extractFeatures;
- (void)clearValues;
- (double)computeCrossingRate:(NSMutableArray *)values withDouble:(double)mean;
- (NSMutableArray *)computeFFTFeatures:(NSMutableArray *)values;
- (double)computeMean:(NSMutableArray *)values;
- (double)computeStdDev:(NSMutableArray *)values withDouble:(double)mean;
- (void)addValuesWithAccX:(double)acc_x
       withAccY:(double)acc_y
       withAccZ:(double)acc_z
       withVectSpeed:(double)vectorial_speed;
- (void)addEnergyValuesWithAccX:(double)acc_x
             withAccY:(double)acc_y
             withAccZ:(double)acc_z;
- (void)addTime:(double)time;

@end
