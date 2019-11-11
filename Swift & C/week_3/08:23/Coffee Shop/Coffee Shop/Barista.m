//
//  Barista.m
//  Coffee Shop
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Barista.h"

@implementation Barista

- (BOOL)prepareEspresso:(EspressoMachine *)espressoMachine {
    [espressoMachine addWater];
    [espressoMachine addBeans];
    [espressoMachine heatWater];
    
    return espressoMachine.hasWater && espressoMachine.hasBeans && espressoMachine.waterIsHot;
}


- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine {
    if (espressoMachine.hasWater && espressoMachine.hasBeans && espressoMachine.waterIsHot) {
        NSLog(@"Here is your espresso! Thank you and have a nice day!");
    } else {
        NSLog(@"The espresso is not finished yet.");
    }
}

- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine {
    if (espressoMachine.hasWater && espressoMachine.waterIsHot) {
        NSLog(@"The water is hot now.");
    } else {
        NSLog(@"The water is not hot yet.");
        [espressoMachine addWater];
        [espressoMachine heatWater];
        [self espressoMachineWaterHasBecomeHot:espressoMachine];
    }
}

@end
