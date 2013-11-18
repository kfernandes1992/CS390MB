//
//  Matrix.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/17/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Matrix : NSObject

@property NSMutableArray *A;
@property int m, n;

-(Matrix *)initWithM:(int)newM n:(int)newN;
-(Matrix *)initWithM:(int)newM n:(int)newN s:(double)newS;
-(NSMutableArray *)getArray;

@end
