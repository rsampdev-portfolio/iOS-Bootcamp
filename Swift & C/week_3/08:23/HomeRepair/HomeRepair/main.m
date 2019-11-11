//
//  main.m
//  HomeRepair
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plumber.h"
#import "Customer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Customer * customer = [[Customer alloc] init];
        Plumber * plumber = [[Plumber alloc] init];
        
        [plumber setDelegate:customer];
        [plumber repairHome];
    }
    return 0;
}
