//
//  ActivityFeatureExtractor.h
//  CMPSCI390MB Accelerometer
//
//  Created by Kevin Fernandes on 10/18/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@end
