//
//  Person.m
//  RetainCycles
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setSpouse:(Person *)spouse {
    if (spouse != nil) {
        spouse->_spouse.spouse = nil;
        spouse->_spouse = self;
    }
    _spouse = spouse;
}

@end
