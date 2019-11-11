//
//  Item.m
//  RandomItems
//
//  Created by Rodney Sampson on 9/10/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Item.h"

@implementation Item

+ (instancetype)randomItem {
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    unsigned int adjectiveIndex = arc4random_uniform((unsigned int)[randomAdjectiveList count]);
    unsigned int nounIndex = arc4random_uniform((unsigned int)[randomNounList count]);
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex], randomNounList[nounIndex]];
    int randomValue = arc4random_uniform(100);
    NSString *randomSerialNumber = [[[NSUUID UUID] UUIDString] substringToIndex:5];
    Item *newItem = [[self alloc] initWithName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

- (instancetype)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super init];
    if (self) {
        _name = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name serialNumber:(NSString *)sNumber {
    return [self initWithName:name valueInDollars:0 serialNumber:sNumber];
}

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)init {
    return [self initWithName:@"Item"];
}

- (void)dealloc {
    NSLog(@"Destroyed: %@", self);
}

- (void)setContainedItem:(Item *)containedItem {
    _containedItem = containedItem;
    self.containedItem.container = self;
}

- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.name, self.serialNumber, self.valueInDollars, self.dateCreated];
    return descriptionString;
}

@end
