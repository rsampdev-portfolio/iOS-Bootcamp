//
//  AddressBookEntry.h
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressBookEntry : NSObject

@property (nonatomic, copy, readonly) NSString * name;
@property (nonatomic, copy, readonly) NSString * emailAddress;
@property (nonatomic, copy, readonly) NSString * buddy;

- (instancetype)initWithName:(NSString *)name EmailAddress:(NSString *)emailAddress Buddy:(NSString *)buddy NS_DESIGNATED_INITIALIZER;

+ (instancetype)createAddressBookEntry;

@end
