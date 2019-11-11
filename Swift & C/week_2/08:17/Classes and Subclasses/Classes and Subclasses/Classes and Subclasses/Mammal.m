//
//  Mammal.m
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Mammal.h"

@implementation Mammal

- (instancetype)init {
    return[self initWithSpecies:@"Unknown"];
}

- (instancetype)initWithSpecies:(NSString *)name {
    return [self initWithSpecies:name hairColor:@"Unknown Color"];
}

- (instancetype)initWithSpecies:(NSString *)name hairColor:(NSString *)hairColor {
    self = [super initWithSpecies:name];
    if (self) {
        _hairColor = hairColor;
    }
    return self;
}

- (void)haveLiveBirth {
    NSLog(@"giving live birth...");
}

- (NSString *)hairColor {
    return _hairColor;
}

- (void)setHairColor:(NSString *)hairColor {
    _hairColor = hairColor;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Species: %@ | Hair Color: %@", [self species], [self hairColor]];
}

@end
