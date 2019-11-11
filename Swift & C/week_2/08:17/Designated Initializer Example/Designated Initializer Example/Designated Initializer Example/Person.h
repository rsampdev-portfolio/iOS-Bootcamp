//
//  Person.h
//  Designated Initializer Example
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString * _name;
}

- (instancetype)initWithName:(NSString *)name;

- (NSString *)name;
- (void)setName:(NSString *)name;

@end
