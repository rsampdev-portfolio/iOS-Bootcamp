//
//  main.m
//  RandomItems
//
//  Created by Rodney Sampson on 9/10/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Container.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        NSMutableArray *moreItems = [[NSMutableArray alloc] init];
        
        Item *backpack = [[Item alloc] initWithName:@"Backpack"];
        [items addObject:backpack];
        Item *calculator = [[Item alloc] initWithName:@"Calculator"];
        [items addObject:calculator];
        backpack.containedItem = calculator;
        backpack = nil;
        calculator = nil;
        
        for (int i = 0; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
            item = [Item randomItem];
            [moreItems addObject:item];
        }
        
        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        
        Container *containerOne = [[Container alloc] initWithName:@"Container One" valueInDollars:100 serialNumber:@"!@#$%" items:items];
        [moreItems addObject:containerOne];
        Container *containerTwo = [[Container alloc] initWithName:@"Container Two" valueInDollars:100 serialNumber:@"!@#$%" items:moreItems];
        
        NSLog(@"\n");
        NSLog(@"%@", containerTwo);
        
        NSLog(@"Setting items to nil...");
        containerOne = nil;
        containerTwo = nil;
        items = nil;
    }
    return 0;
}
