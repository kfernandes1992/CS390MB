//
//  FFT.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>

@interface FFT : NSObject

@property int n;
@property int m;
@property(nonatomic, strong) NSMutableArray *cosines;
@property(nonatomic, strong) NSMutableArray *sines;

-(id)initWithN:(int)initialN;
-(void)fftFromReals:(NSMutableArray *)reals andImaginaries:(NSMutableArray *)imaginaries;

@end
