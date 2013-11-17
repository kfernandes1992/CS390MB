//
//  FeatureExtractor.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFT.h"
#import "Window.h"
#import "MFCC.h"

@interface FeatureExtractor : NSObject

//FFT featureFFT = new FFT(FFT_SIZE);
@property(nonatomic, strong) FFT *featureFFT;

//Window featureWin = new Window(BITRATE);
@property (nonatomic, strong) Window *featureWin;

//MFCC featureMFCC = new MFCC(FFT_SIZE, MFCCS_VALUE, MEL_BANDS, BITRATE);
@property (nonatomic, strong) MFCC *featureMFCC;

@end
