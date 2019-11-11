//
//  Person.m
//  ClothingPrep
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)ironDidCoolDown:(Iron *)iron {
    NSLog(@"I will put the iron away.");
}

- (void)ironDidHeatUp:(Iron *)iron {
    NSLog(@"The iron is ready. Here I go!");
    [iron iron];
}

@end
