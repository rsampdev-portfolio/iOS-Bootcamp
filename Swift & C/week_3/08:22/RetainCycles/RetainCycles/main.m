//
//  main.m
//  RetainCycles
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * romeus = [Person new];
        Person * juliet = [Person new];
        
        romeus.spouse = juliet;
        juliet.spouse = romeus;
        
        NSLog(@"before: %@", romeus);
        NSLog(@"before: %@", juliet);
        
        romeus = nil;
        juliet = nil;
        
        NSLog(@"after: %@", romeus);
        NSLog(@"after: %@", juliet);
    }
    return 0;
}
