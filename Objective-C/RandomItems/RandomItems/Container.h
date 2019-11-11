//
//  Container.h
//  RandomItems
//
//  Created by Rodney Sampson on 9/10/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Item.h"

@interface Container : Item

@property (nonatomic, copy) NSMutableArray *_items;

- (instancetype)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber items:(NSMutableArray *)items;

@end
