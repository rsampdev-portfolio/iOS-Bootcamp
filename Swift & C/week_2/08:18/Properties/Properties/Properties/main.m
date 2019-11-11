//
//  main.m
//  Properties
//
//  Created by Rodney Sampson on 8/18/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Residence.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Residence * place = [[Residence alloc] initWithStreetAddress:@"666 Lucifer Lane" value:666666];
        
        [place setValue: -666666];
        
        NSLog(@"address: %@", [place streetAddress]);
        NSLog(@"value: %@", @([place value]));
    }
    return 0;
}
