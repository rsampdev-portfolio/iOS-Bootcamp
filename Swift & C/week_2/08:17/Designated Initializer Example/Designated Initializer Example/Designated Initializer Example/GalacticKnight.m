//
//  GalacticKnight.m
//  Designated Initializer Example
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "GalacticKnight.h"

@implementation GalacticKnight

- (instancetype)initWithName:(NSString *)name galaxy:(NSString *)galaxy {
    self = [super initWithName:name];
    if (self) {
        _galaxy = galaxy;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name galaxy:@"Unknown"];
}

- (NSString *)galaxy {
    return _galaxy;
}

- (void)setGalaxy:(NSString *)galaxy {
    _galaxy = galaxy;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ | Galaxy: %@", [super description], [self galaxy]];
}

@end
