//
//  MFCC.h
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/17/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MFCC : NSObject
    @property double minMelFreq;
    @property double maxMelFreq;
    @property double lifterExp;
    @property int numCoeffs;
    @property int melBands;
    @property int numFreqs;
    @property double sampleRate;
    @property (strong, atomic) Matrix* melWeights;
    @property (strong,atomic)  Matrix* dctMat;
    @property (strong, atomic) NSMutableArray* lifterWeights;


-(id) initWithFFTSize: (int)fftSize WithNumCoeffs:(int) numCoefs WithMelBands: (int) mBs
       WithSampleRate:(double)sRate;
-(NSMutableArray*) cepstrumWithREArray:(NSMutableArray*)re WithIMArray:(NSMutableArray*) im;

- (double) fmel2hzWithMel:(double) mel;
-(double) fhz2melWithFreq:(double) freq;


@end
