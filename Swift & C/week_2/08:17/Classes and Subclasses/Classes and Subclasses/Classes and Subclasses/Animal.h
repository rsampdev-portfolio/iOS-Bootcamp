//
//  Animal.h
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject {
    NSString * _species;
}

- (instancetype)initWithSpecies:(NSString *)species NS_DESIGNATED_INITIALIZER;

- (void)eat;

- (NSString *)species;
- (void)setSpecies:(NSString *)species;

@end
