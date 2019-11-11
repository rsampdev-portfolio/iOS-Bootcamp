//
//  Person.m
//  Designated Initializer Example
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
    return [self initWithName:@"Unnamed"];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (NSString *)name {
    return _name;
}
- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@", [self name]];
}

@end
