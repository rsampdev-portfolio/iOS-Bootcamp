//
//  Residence.m
//  Properties
//
//  Created by Rodney Sampson on 8/18/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Residence.h"

@implementation Residence

- (instancetype)initWithStreetAddress:(NSString *)streetAddress value:(NSInteger)value {
    if (streetAddress == nil) {
        return nil;
    }
    self = [super init];
    if (self) {
        _streetAddress = streetAddress;
        _value = MAX(value, 0);
    }
    return self;
}

- (instancetype)init {
    return [self initWithStreetAddress:nil value:10000];
}

- (void)setValue:(NSInteger)value {
    _value = MAX(value, 0);
}

@end
