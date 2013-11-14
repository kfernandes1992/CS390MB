//
//  FFT.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/14/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "FFT.h"



@implementation FFT

@synthesize n, m;
@synthesize cosines;
@synthesize sines;


// Lookup tables.  Only need to recompute when size of FFT changes.
//double[] cos;
//double[] sin;

//public FFT(int n)
-(id)initWithN:(int)initialN
{
    self = [super init];
    if (self) {
        n = initialN;
        self.m = (int)(log(n) / log(2));
        
        // Make sure n is a power of 2
        if (n != (1<<m))
        {
            //throw new RuntimeException("FFT length must be power of 2");
            NSLog(@"power of two required");
        }
        
        // precompute tables
//        cos = new double[n/2];
//        sin = new double[n/2];
        cosines = [[NSMutableArray alloc] init];
        sines = [[NSMutableArray alloc] init];
        
        for(int i=0; i<n/2; i++)
        {
//            cos[i] = Math.cos(-2*Math.PI*i/n);
//            sin[i] = Math.sin(-2*Math.PI*i/n);
            [cosines addObject:[NSNumber numberWithDouble:cos(-2 * M_PI * i / n)]];
            [sines addObject:[NSNumber numberWithDouble:sin(-2 * M_PI * i / n)]];
            
        }

    }
    return self;
}



/***************************************************************
 * fft.c
 * Douglas L. Jones
 * University of Illinois at Urbana-Champaign
 * January 19, 1992
 * http://cnx.rice.edu/content/m12016/latest/
 *
 *   fft: in-place radix-2 DIT DFT of a complex input
 *
 *   input:
 * n: length of FFT: must be a power of two
 * m: n = 2**m
 *   input/output
 * x: double array of length n with real part of data
 * y: double array of length n with imag part of data
 *
 *   Permission to copy and use this program is granted
 *   as long as this header is included.
// ****************************************************************/
//public void fft(double[] re, double[] im)
-(void)fftFromReals:(NSMutableArray *)reals andImaginaries:(NSMutableArray *)imaginaries
{
    int i,j,k,n1,n2,a;
    double c,s,t1,t2;
    
    // Bit-reverse
    j = 0;
    n2 = n/2;
    for (i=1; i < n - 1; i++)
    {
        n1 = n2;
        while ( j >= n1 )
        {
            j = j - n1;
            n1 = n1/2;
        }
        j = j + n1;
        
        if (i < j)
        {
//            t1 = re[i];
//            re[i] = re[j];
//            re[j] = t1;
//            t1 = im[i];
//            im[i] = im[j];
//            im[j] = t1;

            
        }
    }
    
    // FFT
    n1 = 0;
    n2 = 1;
    
    for (i=0; i < m; i++)
    {
        n1 = n2;
        n2 = n2 + n2;
        a = 0;
        
        for (j=0; j < n1; j++)
        {
//            c = cos[a];
//            s = sin[a];
//            a +=  1 << (m-i-1);
//            
//            for (k=j; k < n; k=k+n2)
//            {
//                t1 = c*re[k+n1] - s*im[k+n1];
//                t2 = s*re[k+n1] + c*im[k+n1];
//                re[k+n1] = re[k] - t1;
//                im[k+n1] = im[k] - t2;
//                re[k] = re[k] + t1;
//                im[k] = im[k] + t2;
//            }
        }
    }
}

@end
