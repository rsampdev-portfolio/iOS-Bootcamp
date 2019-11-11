//
//  Person.h
//  Self Portrait
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

@interface Person : NSObject {
    NSString * _name;
    NSInteger _age;
    NSMutableArray * _interests;
    NSString * _favoriteProgrammingLanguage;
}

- (NSString *)name;
- (void)setName:(NSString *)name;

- (NSInteger)age;
- (void)setAge:(NSInteger)age;

- (NSMutableArray *)interests;
- (void)addInterests:(NSString *)interest;
- (void)setInterests:(NSMutableArray *)interests;

- (NSString *)favoriteProgrammingLanguage;

@end

