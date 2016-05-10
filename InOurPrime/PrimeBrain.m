//
//  PrimeBrain.m
//  InOurPrime
//
//  Created by Nick Perkins on 4/29/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import "PrimeBrain.h"

@implementation PrimeBrain

-(NSArray*)isItPrime:(int)aNumber{
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    int count = 1;
    
    while (count < aNumber) {
        if (aNumber % count == 0) {
            [array addObject:[NSNumber numberWithInt:count]];
            count++;
        }else{
            count++;
        }
    }
    [array addObject:[NSNumber numberWithInt: aNumber]];
    return array;
}

@end