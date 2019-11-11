//
//  Human.m
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Human.h"

@implementation Human

- (instancetype)initWithSpecies:(NSString *)name hairColor:(NSString *)hairColor {
    return [self initWithSpecies:name hairColor:hairColor favoriteProgrammingLanguage:@"Unknown favorite programming language"];
}

- (instancetype)initWithSpecies:(NSString *)name hairColor:(NSString *)hairColor favoriteProgrammingLanguage:(NSString *)favoriteProgrammingLanguage {
    self = [super initWithSpecies:name hairColor:hairColor];
    if (self) {
        _favoriteProgrammingLanguage = favoriteProgrammingLanguage;
    }
    return self;
}

- (void)doHardcoreParkour {
    NSLog(@"doing hardcore parkour...");
}

- (NSString *)favoriteProgrammingLanguage {
    return _favoriteProgrammingLanguage;
}

- (void)setFavoriteProgrammingLanguage:(NSString *)favoriteProgrammingLanguage {
    _favoriteProgrammingLanguage = favoriteProgrammingLanguage;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Species: %@ | Hair Color: %@ | Favorite Programming Language: %@", [self species], [self hairColor], [self favoriteProgrammingLanguage]];
}

@end
