//
//  Mammal.h
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Animal.h"

@interface Mammal : Animal {
    NSString * _hairColor;
}

- (instancetype)initWithSpecies:(NSString *)name hairColor:(NSString *)hairColor NS_DESIGNATED_INITIALIZER;

- (void)haveLiveBirth;

- (NSString *)hairColor;
- (void)setHairColor:(NSString *)hairColor;

@end
