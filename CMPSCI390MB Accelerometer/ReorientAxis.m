//
//  ReorientAxis.m
//  
//
//  Created by Erik Risinger on 10/18/13.
//
//

#import "ReorientAxis.h"

@implementation ReorientAxis

@synthesize accState, readCounter, READ_LIMIT, accReadings, accValues, aggAX, aggAY, aggAZ;

-(id)init{
    self = [super init];
    if (self) {
        aggAX = 0.0;
        aggAY = 0.0;
        aggAZ = 0.0;
    }
    return self;
}

-(NSMutableArray *)getReorientedX: (double)accX Y: (double)accY Z: (double)accZ{
    
    
    double acc_x = accX;
    double acc_y = accZ;
    double acc_z = (-1)*accY;
    NSMutableArray *output;
    
    if(readCounter == READ_LIMIT){
        //Now, we are ready to orient axis
        
        
        //reset counter
        readCounter = 0;
    }
    
    accState = true;
    
    aggAX = aggAX + acc_x - [[[accReadings objectAtIndex:readCounter] objectAtIndex:0] doubleValue];
    aggAY = aggAY + acc_y - [[[accReadings objectAtIndex:readCounter] objectAtIndex:1] doubleValue];
    aggAZ = aggAZ + acc_z - [[[accReadings objectAtIndex:readCounter] objectAtIndex:3] doubleValue];
    
    [[accReadings objectAtIndex:readCounter] setObject:[[NSNumber alloc] initWithDouble: acc_x] atIndex:0];
    [[accReadings objectAtIndex:readCounter] setObject:[[NSNumber alloc] initWithDouble: acc_y] atIndex:1];
    [[accReadings objectAtIndex:readCounter] setObject:[[NSNumber alloc] initWithDouble: acc_z] atIndex:2];
    
    if(accState){
        //Once, sufficient samples have been collected, we can orient
        //Now get the oriented axis and corresponding readings
        double g = 9.81;
        double acc_z_o = aggAZ/(READ_LIMIT*g);
        double acc_y_o = aggAY/(READ_LIMIT*g);
        double acc_x_o = aggAX/(READ_LIMIT*g);
        
        acc_z_o = (acc_z_o>1.0?1.0:acc_z_o);
        acc_z_o = (acc_z_o<(-1.0)?-1.0:acc_z_o);
        acc_x = acc_x/g;
        acc_y = acc_y/g;
        acc_z = acc_z/g;
        double theta_tilt = acos(acc_z_o);
        double phi_pre = atan2(acc_y_o, acc_x_o);
        double tan_psi = ( (-1)*acc_x_o*sin(phi_pre) + acc_y_o*cos(phi_pre))/
        ((acc_x_o*cos(phi_pre)+acc_y_o*sin(phi_pre))*cos(theta_tilt)+(-1)*acc_z_o*sin(theta_tilt));
        double psi_post = atan(tan_psi);
        double acc_x_pre = acc_x*cos(phi_pre)+ acc_y*sin(phi_pre);
        double acc_y_pre = (-1)*acc_x*sin(phi_pre)+ acc_y*cos(phi_pre);
        double acc_x_pre_tilt = acc_x_pre*cos(theta_tilt)+ (-1)*acc_z*sin(theta_tilt);
        double acc_y_pre_tilt = acc_y_pre;
        double orient_acc_x = (acc_x_pre_tilt*cos(psi_post)+ acc_y_pre_tilt*sin(psi_post))*g;
        double orient_acc_y =( (-1)*acc_x_pre_tilt*sin(psi_post)+ acc_y_pre_tilt*cos(psi_post))*g;
        double orient_acc_z = acc_z*g/(cos(theta_tilt));
        //System.out.println("ORT:"+orient_acc_x+","+orient_acc_y+","+orient_acc_z);
        orient_acc_z = (orient_acc_z>3*g?3*g:orient_acc_z);
        orient_acc_z = (orient_acc_z<(-1)*3*g?(-1)*3*g:orient_acc_z);
        orient_acc_z = sqrt((pow(acc_x, 2)+pow(acc_y, 2)+pow(acc_z, 2))*pow(g, 2)
                            -(pow(orient_acc_x, 2)+pow(orient_acc_y, 2)));
        
        output = [[NSMutableArray alloc] initWithObjects:[[NSNumber alloc] initWithDouble:orient_acc_x], [[NSNumber alloc] initWithDouble:orient_acc_y], [[NSNumber alloc] initWithDouble:orient_acc_z], nil];
        
    }
    readCounter++;
    return output;
}

@end
