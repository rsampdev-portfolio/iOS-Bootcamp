//
//  AddressBook.h
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBookEntry.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSMutableDictionary * addresses;

- (void)addAddressBookEntry:(AddressBookEntry *)newAddressBookEntry;

- (void)displayAddressBookEntrys:(NSArray *)sortedEntriesToPrint;

@end
