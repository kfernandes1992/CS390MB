//
//  Matrix.m
//  CMPSCI390MB Accelerometer
//
//  Created by Erik Risinger on 11/17/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "Matrix.h"

@implementation Matrix

@synthesize A;
@synthesize m, n;

/** Construct an m-by-n matrix of zeros.
 @param m    Number of rows.
 @param n    Number of colums.
 */

//public Matrix (int m, int n) {
-(Matrix *)initWithM:(int)newM n:(int)newN
{
    //    this.m = m;
    //    this.n = n;
    //    A = new double[m][n];
    self = [super init];
    if (self) {
        m = newM;
        n = newN;
        A = [[NSMutableArray alloc] init];
    }
    return self;
}

/** Construct an m-by-n constant matrix.
 @param m    Number of rows.
 @param n    Number of colums.
 @param s    Fill the matrix with this scalar value.
 */

//public Matrix (int m, int n, double s) {
-(Matrix *)initWithM:(int)newM n:(int)newN s:(double)newS
{
//    this.m = m;
//    this.n = n;
//    A = new double[m][n];
    self = [super init];
    if (self) {
        m = newM;
        n = newN;
        A = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < m; i++) {
            NSMutableArray *inner = [[NSMutableArray alloc] init];
            for (int j = 0; j < n; j++) {
                //            A[i][j] = s;
                [inner setObject:[NSNumber numberWithDouble:newS] atIndexedSubscript:j];
            }
            [A setObject:inner atIndexedSubscript:i];
        }

    }
    return self;
}

/** Get a submatrix.
 @param i0   Initial row index
 @param i1   Final row index
 @param j0   Initial column index
 @param j1   Final column index
 @return     A(i0:i1,j0:j1)
 @exception  ArrayIndexOutOfBoundsException Submatrix indices
 */

//public Matrix getMatrix (int i0, int i1, int j0, int j1) {
-(Matrix *)getMatrixWithInitialRow:(int)initialR finalRow:(int)finalR initialCol:(int)initialC finalCol:(int)finalC
{
//    Matrix X = new Matrix(i1-i0+1,j1-j0+1);
    Matrix *X = [[Matrix alloc] initWithM:finalR - initialR + 1 n:finalC - initialC + 1];
//    double[][] B = X.getArray();
    NSMutableArray *B = X.A;
//    try {
//        for (int i = i0; i <= i1; i++) {
//            for (int j = j0; j <= j1; j++) {
//                B[i-i0][j-j0] = A[i][j];
//            }
//        }
//    }
//    
//    catch(ArrayIndexOutOfBoundsException e) {
//        throw new ArrayIndexOutOfBoundsException("Submatrix indices");
//    }
    for (int i = initialR; i <= finalR; i++) {
        NSMutableArray *inner = [[NSMutableArray alloc] init];
        for (int j = initialC; j <= finalC; j++) {
            [inner setObject:[A objectAtIndex:j] atIndexedSubscript:j];
        }
        [B setObject:inner atIndexedSubscript:i];
    }
    return X;
}

//public Matrix times (double s) {
//-(Matrix *) times:(double) s
//{
////    Matrix X = new Matrix(m,n);
//    Matrix *X = [[Matrix alloc] init];
////    double[][] C = X.getArray();
//    NSMutableArray *C = X.A;
//    for (int i = 0; i < m; i++) {
//        NSMutableArray *inner = [[NSMutableArray alloc] init];
//        for (int j = 0; j < n; j++) {
////            C[i][j] = s*A[i][j];
//            NSNumber *a = [NSNumber numberWithDouble:[[A objectAtIndex:j] doubleValue] * s];
//            [inner setObject:a atIndexedSubscript:j];
//        }
//        [C setObject:inner atIndexedSubscript:i];
//    }
//    return X;
//}

//public Matrix times (Matrix B) {
-(Matrix *)times:(Matrix *)B
{
//    if (B.m != n) {
//        throw new IllegalArgumentException("Matrix inner dimensions must agree.");
//    }
//    Matrix X = new Matrix(m,B.n);
    Matrix *X = [[Matrix alloc] initWithM:m n:B.n];
//    double[][] C = X.getArray();
    NSMutableArray *C = [[NSMutableArray alloc] init];
    
//    double[] Bcolj = new double[n];
    NSMutableArray *Bcolj = [[NSMutableArray alloc] init];
    for (int j = 0; j < B.n; j++) {
        NSMutableArray *inner = [[NSMutableArray alloc] init];
        for (int k = 0; k < n; k++) {
            Bcolj[k] = B.A[k][j];
        }
        for (int i = 0; i < m; i++) {
//            double[] Arowi = A[i];
            NSMutableArray *Arowi = [[NSMutableArray alloc] init];
            double s = 0;
            for (int k = 0; k < n; k++) {
//                s += Arowi[k]*Bcolj[k];
                s += [[Arowi objectAtIndex:k] doubleValue] * [[Bcolj objectAtIndex:k] doubleValue];
            }
            [inner setObject:[NSNumber numberWithDouble:s] atIndexedSubscript:i];
//            C[i][j] = s;
            
        }
        [C setObject:inner atIndexedSubscript:j];
    }
    return X;
}

@end
