//
//  Person.m
//  Self Portrait
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@implementation Person

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

- (NSMutableArray *)interests {
    return _interests;
}

- (void)setInterests:(NSMutableArray *)interests {
    _interests = interests;
}

- (void)addInterests:(NSString *)interest {
    if (_interests == NULL) {
        _interests = [NSMutableArray new];
    }
    [_interests addObject:interest];
}

- (NSString *)favoriteProgrammingLanguage {
    if (_favoriteProgrammingLanguage == NULL) {
        _favoriteProgrammingLanguage = @"Java";
    }
    return _favoriteProgrammingLanguage;
}

- (NSString *)description {
    NSString * interestsForPrinting = [[self interests] componentsJoinedByString:@", "];
    return [NSString stringWithFormat: @"\n\nMy name is %@ and I am %@ years old. My interests include %@ and my favorite programming language is %@.\n\n", [self name], @([self age]), interestsForPrinting, [self favoriteProgrammingLanguage]];
}

@end
