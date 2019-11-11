//
//  Container.m
//  RandomItems
//
//  Created by Rodney Sampson on 9/10/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Container.h"

@implementation Container

- (instancetype)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber items:(NSMutableArray *)items {
    self = [super initWithName:name valueInDollars:value serialNumber:sNumber];
    if (self) {
        self._items = items;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    return [self initWithName:name valueInDollars:value serialNumber:sNumber items:nil];
}

- (int)valueInDollars {
    int worth = 0;
    for (Item *item in self._items) {
        worth += item.valueInDollars;
    }
    return worth;
}

- (NSString *)description {
    NSString *items = [self._items componentsJoinedByString:@", \n"];
    return [[NSString alloc] initWithFormat:@"%@ | Worth $%d | Items: { \n%@ \n}", self.name, self.valueInDollars, items];
}

@end
