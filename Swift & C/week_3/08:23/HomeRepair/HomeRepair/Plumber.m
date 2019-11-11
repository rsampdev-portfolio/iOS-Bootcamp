//
//  Plumber.m
//  HomeRepair
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Plumber.h"

@implementation Plumber

- (void)repairHome {
    
    id<PlumberDelegate> strongDelegate = self.delegate;
    
    BOOL foundLeak = arc4random() % 2 == 0;
    
    if (foundLeak) {
        if ([strongDelegate plumberShouldFixLeak:self]) {
            NSLog(@"Fixed the leak!");
        } else {
            NSLog(@"Found a leak and didn't fix it.");
        }
    } else {
        NSLog(@"Did not find a leak.");
    }
    
    BOOL shouldBlingOutToilet = [strongDelegate respondsToSelector:@selector(plumberShouldBlingOutToilet:)] && [strongDelegate plumberShouldBlingOutToilet:self];
    
    if (shouldBlingOutToilet) {
        NSLog(@"Bling Bling");
    } else {
        NSLog(@"Boring");
    }
}

@end
