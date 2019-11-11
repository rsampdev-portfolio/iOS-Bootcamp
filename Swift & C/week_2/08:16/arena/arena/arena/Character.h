//
//  Character.h
//  arena
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject {
    NSString * _name;
    NSInteger _age;
}

- (NSString *)name;
- (void)setName:(NSString *)name;

- (NSInteger)age;
- (void)setAge:(NSInteger)age;

@end
