//
//  FeatureExtractor.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "FeatureExtractor.h"

@implementation FeatureExtractor

static const int FFT_SIZE = 8192;
static const int BITRATE = 8000;
static const int MFCCS_VALUE = 12;
static const int MEL_BANDS = 20;

@synthesize featureFFT;
@synthesize featureWin;
@synthesize featureMFCC;

//public static double[] ComputeFeaturesForFrame(short[] data16bit, int size, int index)
-(NSMutableArray *)ComputeFeaturesForFrameFromData:(NSMutableArray *)data16bit withSize:(int)size andIndex:(int)index;
{
//    double[] fftBufferR = new double[FFT_SIZE];
//    double[] fftBufferI = new double[FFT_SIZE];
//    double[] featureCepstrum = new double[MFCCS_VALUE];
    NSMutableArray *fftBufferR;
    NSMutableArray *fftBufferI;
    NSMutableArray *featureCepstrum;

    // Frequency analysis
//    Arrays.fill(fftBufferR, 0);
//    Arrays.fill(fftBufferI, 0);
    
    for (int i = 0; i < FFT_SIZE; i++) {
        [fftBufferR addObject:[NSNumber numberWithDouble:0.0]];
        [fftBufferI addObject:[NSNumber numberWithDouble:0.0]];
    }
    
    // Convert audio buffer to doubles
    for (int i = 0; i < size; i++)
    {
//        fftBufferR[i] = data16bit[index+i];
        double d16 = [[data16bit objectAtIndex:index + i] doubleValue];
        [fftBufferR setObject:[NSNumber numberWithDouble:d16] atIndexedSubscript:i];
    }
    
    // In-place windowing
//    featureWin.applyWindow(fftBufferR);
    //[fea]
    
    // In-place FFT
//    featureFFT.fft(fftBufferR, fftBufferI);
    [featureFFT fftFromReals:fftBufferR andImaginaries:fftBufferI];
    
    // Get MFCCs
    featureCepstrum = featureMFCC.cepstrum(fftBufferR, fftBufferI);
    
    return featureCepstrum;
}

-(id)init
{
    self = [super init];
    if (self) {
        //FFT featureFFT = new FFT(FFT_SIZE);
        //Window featureWin = new Window(BITRATE);
        //MFCC featureMFCC = new MFCC(FFT_SIZE, MFCCS_VALUE, MEL_BANDS, BITRATE);
        featureFFT = [[FFT alloc] initWithN:FFT_SIZE];
        featureWin = [[Window alloc] initWithWindowSize:BITRATE];
        featureMFCC = [[MFCC alloc] ]
    }
}


@end
