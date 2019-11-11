//
//  GalacticKnight.h
//  Designated Initializer Example
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Person.h"

@interface GalacticKnight : Person {
    NSString * _galaxy;
}

- (instancetype)initWithName:(NSString *)name
                      galaxy:(NSString *)galaxy;

- (NSString *)galaxy;
- (void)setGalaxy:(NSString *)galaxy;

@end
