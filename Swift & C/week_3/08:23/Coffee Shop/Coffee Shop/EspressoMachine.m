//
//  EspressoMachine.m
//  Coffee Shop
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "EspressoMachine.h"

@implementation EspressoMachine

- (instancetype)init {
    self = [super init];
    if (self) {
        _hasWater = NO;
        _hasBeans = NO;
        _waterIsHot = NO;
        _delegate = nil;
    }
    return self;
}

- (BOOL)makeEspresso {
    if (self.delegate != nil) {
        id<EspressoMachineDelegate> strongDelegate = self.delegate;
        
        BOOL shouldPrepareEspresso = [strongDelegate prepareEspresso:self];
        
        if (shouldPrepareEspresso) {
            BOOL shouldEspressoMachineWaterHasBecomeHot = [strongDelegate respondsToSelector:@selector(espressoMachineWaterHasBecomeHot:)];
            
            if (shouldEspressoMachineWaterHasBecomeHot) {
                [strongDelegate espressoMachineWaterHasBecomeHot:self];
            }
            
            [strongDelegate espressoMachineDidFinishMakingEspresso:self];
            
            return YES;
        }
    }
    
    return NO;
}

- (BOOL)addWater {
    self.hasWater = YES;
    return self.hasWater;
}

- (BOOL)heatWater {
    self.waterIsHot = YES;
    return self.waterIsHot;
}

- (BOOL)addBeans {
    self.hasBeans = YES;
    return self.hasBeans;
}

@end
