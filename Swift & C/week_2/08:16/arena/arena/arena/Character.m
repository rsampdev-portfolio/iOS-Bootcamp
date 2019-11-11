//
//  Character.m
//  arena
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Character.h"

@implementation Character

- (NSString *)name {
    return _name;
}

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSInteger)age {
    return _age;
}

- (void)setAge:(NSInteger)age {
    _age = age;
}

- (NSString *)description {
    return [NSString stringWithFormat: @"Name: %@. Age: %@.", [self name], @([self age])];
}

@end
