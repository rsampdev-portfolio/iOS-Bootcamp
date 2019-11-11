//
//  main.m
//  Designated Initializer Example
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GalacticKnight.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GalacticKnight * person = [[GalacticKnight alloc] initWithName:@"Sampson" galaxy:@"The Milky Way"];
        
        NSLog(@"%@", person);
    }
    return 0;
}
