//
//  Residence.h
//  Properties
//
//  Created by Rodney Sampson on 8/18/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Residence : NSObject

@property (nonatomic, copy, readonly) NSString * streetAddress;
@property (nonatomic) NSInteger value;

- (instancetype)initWithStreetAddress:(NSString *)streetAddress value:(NSInteger)value NS_DESIGNATED_INITIALIZER;

@end
