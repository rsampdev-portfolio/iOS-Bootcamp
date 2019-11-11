//
//  main.m
//  arena
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Character *masterYi = [Character new];
        [masterYi setName:@"Master Yi"];
        [masterYi setAge:47];
        
        NSLog(@"\n%@", masterYi);
    }
    return 0;
}
