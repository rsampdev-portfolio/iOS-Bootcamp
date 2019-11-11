//
//  EspressoMachine.h
//  Coffee Shop
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EspressoMachineDelegate;

@interface EspressoMachine : NSObject

@property (nonatomic, readwrite) BOOL hasWater;
@property (nonatomic, readwrite) BOOL hasBeans;
@property (nonatomic, readwrite) BOOL waterIsHot;
@property (nonatomic, weak, readwrite) id<EspressoMachineDelegate> delegate;

- (BOOL)makeEspresso;

- (BOOL)heatWater;

- (BOOL)addBeans;

- (BOOL)addWater;

@end

@protocol EspressoMachineDelegate <NSObject>

- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine;

- (BOOL)prepareEspresso:(EspressoMachine *)espressoMachine;

@optional

- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine;

@end
