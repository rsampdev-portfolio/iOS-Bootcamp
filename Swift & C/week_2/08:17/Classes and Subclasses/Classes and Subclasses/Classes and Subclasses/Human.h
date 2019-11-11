//
//  Human.h
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Mammal.h"

@interface Human : Mammal {
    NSString * _favoriteProgrammingLanguage;
}

- (instancetype)initWithSpecies:(NSString *)name hairColor:(NSString *)hairColor favoriteProgrammingLanguage:(NSString *)favoriteProgrammingLanguage
NS_DESIGNATED_INITIALIZER;

- (void)doHardcoreParkour;

- (NSString *)favoriteProgrammingLanguage;
- (void)setFavoriteProgrammingLanguage:(NSString *)favoriteProgrammingLanguage;

@end
