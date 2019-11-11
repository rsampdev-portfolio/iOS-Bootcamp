//
//  AddressBook.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

- (instancetype)init {
    self = [super init];
    if (self) {
        _addresses = [[NSMutableDictionary dictionary] init];
    }
    return self;
}

- (void)addAddressBookEntry:(AddressBookEntry *)newAddressBookEntry {
    [self.addresses setObject:newAddressBookEntry forKey:newAddressBookEntry.name];
}

- (void)displayAddressBookEntrys:(NSArray *)sortedEntriesToPrint {
    NSArray * sortedKeys = sortedEntriesToPrint;
    
    if (sortedEntriesToPrint == nil) {
        sortedKeys = [[self.addresses allKeys] sortedArrayUsingSelector:@selector(compare:)];
    }
    
    NSUInteger index = 0;
    for (NSString * key in sortedKeys) {
        AddressBookEntry * temp = [self.addresses objectForKey: key];
        
        NSString * nameLine = [NSString stringWithFormat: @"| Name: %@", temp.name];
        NSString * emailLine = [NSString stringWithFormat: @"| Email Address: %@", temp.emailAddress];
        NSString * buddyLine = [NSString stringWithFormat: @"| Buddy's Name: %@", temp.buddy];
        NSString * border = @"|";
        
        for (int i = 0; i < 100; i++) {
            if (i < 100 - 1) {
                if (i > nameLine.length - 2) {
                    nameLine = [NSString stringWithFormat: @"%@%@", nameLine, @" "];
                }
                if (i > emailLine.length - 2) {
                    emailLine = [NSString stringWithFormat: @"%@%@", emailLine, @" "];
                }
                if (i > buddyLine.length - 2) {
                    buddyLine = [NSString stringWithFormat: @"%@%@", buddyLine, @" "];
                }
                
                border = [NSString stringWithFormat: @"%@%@", border, @"-"];
                continue;
            }
            nameLine = [NSString stringWithFormat: @"%@%@", nameLine, @"|"];
            emailLine = [NSString stringWithFormat: @"%@%@", emailLine, @"|"];
            buddyLine = [NSString stringWithFormat: @"%@%@", buddyLine, @"|"];
            border = [NSString stringWithFormat: @"%@%@", border, @"|"];
        }
        
        NSLog(@"%@", border);
        NSLog(@"%@", nameLine);
        NSLog(@"%@", emailLine);
        NSLog(@"%@", buddyLine);
        NSLog(@"%@", border);
        
        if (index != sortedKeys.count - 1) {
            NSLog(@"\n");
        }
        index++;
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@", [self addresses]];
}

@end
