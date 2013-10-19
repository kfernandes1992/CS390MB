//
//  ReorientAxis.h
//  
//
//  Created by Erik Risinger on 10/18/13.
//
//private boolean accState = false;
//private int readCounter = 0;
//private final int READ_LIMIT = 400;
//private double[][] accReadings =  new double[READ_LIMIT][3];
//private double aggAX = 0.0f;
//private double aggAY = 0.0f;
//private double aggAZ = 0.0f;

#import <Foundation/Foundation.h>

@interface ReorientAxis : NSObject
@property(nonatomic, assign) BOOL accState;
@property(nonatomic, assign) int readCounter;
@property(nonatomic, assign) const int READ_LIMIT;
@property(nonatomic, strong) NSMutableArray *accReadings;
@property(nonatomic, strong) NSMutableArray *accValues;
@property(nonatomic, assign) double aggAX;
@property(nonatomic, assign) double aggAY;
@property(nonatomic, assign) double aggAZ;


@end
