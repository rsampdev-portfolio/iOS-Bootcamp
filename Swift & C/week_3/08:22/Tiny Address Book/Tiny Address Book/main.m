//
//  main.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "UserInput.h"
#import "AddressBookEntry.h"

void start(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        start();
    }
    return 0;
}

void start(void) {
    AddressBook * addressBook = [[AddressBook alloc] init];
    AddressBookEntry * newEntry = nil;
    NSMutableArray * entries = [[NSMutableArray alloc] init];
    NSInteger choice = 0;
    
    while (choice == 0) {
        newEntry = [AddressBookEntry createAddressBookEntry];
        
        [entries addObject:newEntry];
        [addressBook addAddressBookEntry:newEntry];
        
        choice = getNumberFromUser(2, @"Enter 1 if you are done entering entries. Enter 0 if you want to add another entry.");
    }
    
    choice = getNumberFromUser(2, @"Enter 1 if you want to print out all the entries. Enter 0 if you want to select the entries to be printed.");
    
    if (choice == 0) {
        NSArray * sortedKeys = [[addressBook.addresses allKeys] sortedArrayUsingSelector:@selector(compare:)];
        NSMutableArray * entriesToPrint = [[NSMutableArray alloc] init];
        BOOL choosing = YES;
        
        NSUInteger index = 0;
        for (NSString * key in sortedKeys) {
            AddressBookEntry * entry = [addressBook.addresses objectForKey: key];
            NSLog(@"Enter %@ for %@", @(index), entry.name);
            NSLog(@"\n");
            index++;
        }
        
        while (choosing) {
            choice = getNumberFromUser(sortedKeys.count, @"Enter the number of a entry you would like to print out.");
            [entriesToPrint addObject: sortedKeys[choice]];
            
            NSString * yesOrNo = getStringFromUser(4, @"Enter 'yes' if you are done. Enter 'no' if you are still selecting entries.");
            if ([yesOrNo isEqual: @"yes"]) {
                choosing = NO;
            }
        }
        
        [addressBook displayAddressBookEntrys:entriesToPrint];
    } else {
        [addressBook displayAddressBookEntrys:nil];
    }
}
