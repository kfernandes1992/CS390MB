//
//  MFCC.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/17/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "MFCC.h"

@implementation MFCC

@synthesize minMelFreq,maxMelFreq,lifterExp,numCoeffs,melBands,numFreqs,sampleRate,melWeights,lifterWeights,dctMat;

- (id)init
{
    self = [super init];
    if (self) {
        minMelFreq=0;
        maxMelFreq = 4000;
        lifterExp = 0.6;
    }
    return self;
}

-(id) initWithFFTSize: (int)fftSize WithNumCoeffs:(int) numCoefs WithMelBands: (int) mBs
       WithSampleRate:(double)sRate{
    // Precompute mel-scale auditory perceptual spectrum
    melWeights = [[Matrix alloc] initWithM:melBands n:fftSize s:0];
    
    // Number of non-redundant frequency bins
    numFreqs = fftSize/2 + 1;
    self.numCoeffs = numCoefs;
    self.melBands = mBs;
    self.sampleRate = sRate;
    
    NSMutableArray*  fftFreqs = [[NSMutableArray alloc] init ];
    for (int i = 0; i < fftSize; i ++)
    {
        fftFreqs[i] = [[NSNumber alloc] initWithDouble:(double)i/(double)fftSize*self.sampleRate ];
    }
    
    double minMel = [self fmel2hzWithMel:minMelFreq];
    double maxMel = [self fmel2hzWithMel: maxMelFreq];
    
    NSMutableArray* binFreqs= [[NSMutableArray alloc]init];
    for (int i = 0; i < melBands + 2; i ++)
    {
        binFreqs[i] = [[NSNumber alloc]initWithDouble:[self fmel2hzWithMel: (minMel + (double)i/((double)melBands + 1.0) * (maxMel - minMel))]];
    }
    
    NSMutableArray *outerArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < melBands; i ++)
    {
        NSMutableArray* innerArray=[[NSMutableArray alloc] init];
        for (int j = 0; j < fftSize; j ++)
        {
            double loSlope = ([fftFreqs[j] doubleValue] - [binFreqs[i] doubleValue])/([binFreqs[i+1] doubleValue] - [binFreqs[i] doubleValue]);
            double hiSlope = ([binFreqs[i+2] doubleValue] - [fftFreqs[j] doubleValue])/([binFreqs[i+2] doubleValue] - [binFreqs[i+1] doubleValue]);
            
            innerArray[j]=[[NSNumber alloc] initWithDouble: MAX(0, MIN(loSlope, hiSlope))];
        }
        [outerArray setObject:innerArray atIndexedSubscript:i];
    }
    melWeights.A = outerArray;
    
    // Keep only positive frequency parts of Fourier transform
    melWeights = [melWeights getMatrixWithInitialRow:0 finalRow:melBands-1 initialCol:0 finalCol:numFreqs-1];
    
    // Precompute DCT matrix
    dctMat = [[Matrix alloc]initWithM:numCoeffs n:melBands s:0];
    
    double scale = sqrt(2.0/melBands);
   
    outerArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < numCoeffs; i ++)
    {
        NSMutableArray *innerArray=[[NSMutableArray alloc]init];
        for (int j = 0; j < melBands; j ++)
        {
            double phase = j*2 + 1;
            innerArray[j] = [[NSNumber alloc] initWithDouble: (cos((double)i*phase/(2.0*(double)melBands)*3.141592653589)*scale)];
        }
        outerArray[i]=innerArray;
    }
    dctMat.A=outerArray;
    
    
    double root2=1.0/sqrt(2.0);
    NSMutableArray* dctMatFirstPosArray=dctMat.A[0];
    for (int j = 0; j < melBands; j ++)
    {
        dctMatFirstPosArray[j]= [[NSNumber alloc]initWithDouble: ([dctMatFirstPosArray[j] doubleValue] * root2)];
    }
    
    // Precompute liftering vector
    lifterWeights = [[NSMutableArray alloc]init];
    lifterWeights[0] = [[NSNumber alloc] initWithDouble:1.0];
    for (int i = 1; i < numCoeffs; i ++)
    {
        lifterWeights[i] = [[NSNumber alloc]initWithDouble: pow((double)i, lifterExp)];
    }
    return self;
}


-(NSMutableArray*) cepstrumWithREArray:(NSMutableArray*)re WithIMArray:(NSMutableArray*) im
{
    Matrix* powerSpec = [[Matrix alloc]initWithM:numFreqs n:1];
    for (int i = 0; i < numFreqs; i ++)
    {
        NSMutableArray *inner=powerSpec.A[i];
        inner[0] = [[NSNumber alloc]initWithDouble: [re[i] doubleValue]*[re[i] doubleValue] + [im[i] doubleValue]*[im[i] doubleValue] ];
    }
    
    // melWeights - melBands x numFreqs
    // powerSpec  - numFreqs x 1
    // melWeights*powerSpec - melBands x 1
    // aSpec      - melBands x 1
    // dctMat     - numCoeffs x melBands
    // dctMat*log(aSpec) - numCoeffs x 1
    
    Matrix* aSpec = [melWeights times:powerSpec];
    Matrix* logMelSpec = [[Matrix alloc] initWithM:melBands n:1];
    for (int i = 0; i < melBands; i ++)
    {
        logMelSpec.A[i][0] = [[NSNumber alloc] initWithDouble:log([aSpec.A[i][0] doubleValue])];
    }
    
    Matrix* melCeps = [dctMat times:(logMelSpec)];
    
    NSMutableArray* ceps = [[NSMutableArray alloc] init];
    for (int i = 0; i < numCoeffs; i ++)
    {
        ceps[i] = [[NSNumber alloc]initWithDouble:[lifterWeights[i] doubleValue]* [melCeps.A[i][0] doubleValue]];
    }
    
    return ceps;

}

- (double) fmel2hzWithMel:(double) mel
{
    return 700.0*(pow(10.0, mel/2595.0) - 1.0);
}

-(double) fhz2melWithFreq:(double) freq
{
    return 2595.0*log10(1.0 + freq/700.0);
}

@end
