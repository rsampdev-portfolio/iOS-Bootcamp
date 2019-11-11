//
//  main.m
//  ClothingPrep
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iron.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Iron * iron = [[Iron alloc] init];
        Person * person = [[Person alloc] init];
        
        iron.delegate = person;
        
        [iron addWater];
        [iron getReady];
    }
    return 0;
}
