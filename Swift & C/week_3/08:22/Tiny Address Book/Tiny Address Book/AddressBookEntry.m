//
//  AddressBookEntry.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "AddressBookEntry.h"
#import "UserInput.h"

@implementation AddressBookEntry

- (instancetype)initWithName:(NSString *)name EmailAddress:(NSString *)emailAddress Buddy:(NSString *)buddy {
    self = [super init];
    if (self) {
        _name = name;
        _emailAddress = emailAddress;
        _buddy = buddy;
    }
    return self;
}

- (instancetype)init {
    return [self initWithName:@"UNKNOWN" EmailAddress:@"UNKNOWN" Buddy:@"UNKNOWN"];
}

+ (instancetype)createAddressBookEntry {
    NSString * name = getStringFromUser(100, @"What is your name?");
    NSString * emailAddress = getStringFromUser(100, @"What is your email address?");
    NSString * buddy =getStringFromUser(100, @"What is your buddy's name?");
    
    return [[AddressBookEntry alloc] initWithName:name EmailAddress:emailAddress Buddy:buddy];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@ | Email Address: %@ | Buddy's Name: %@", self.name, self.emailAddress, self.buddy];
}

@end
