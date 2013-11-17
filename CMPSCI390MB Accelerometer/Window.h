//
//  Window.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Window : NSObject

@property (nonatomic, strong) NSMutableArray *window;
@property int n;

-(id)initWithWindowSize:(int)windowSize;
-(void)applyWindowWithBuffer:(NSMutableArray *) buffer;

@end
