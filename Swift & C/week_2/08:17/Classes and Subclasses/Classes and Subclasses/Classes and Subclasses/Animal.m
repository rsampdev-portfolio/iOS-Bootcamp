//
//  Animal.m
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init {
    return[self initWithSpecies:@"Unknown"];
}

- (instancetype)initWithSpecies:(NSString *)species {
    self = [super init];
    if (self) {
        _species = species;
    }
    return self;
}

- (void)eat {
    NSLog(@"eating...");
}

- (NSString *)species {
    return _species;
}

- (void)setSpecies:(NSString *)species {
    _species = species;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Species: %@", [self species]];
}

@end
