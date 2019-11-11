//
//  main.m
//  Coffee Shop
//
//  Created by Rodney Sampson on 8/23/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EspressoMachine.h"
#import "Barista.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Barista * barista = [[Barista alloc] init];
        EspressoMachine * espressoMachine = [[EspressoMachine alloc] init];
        [espressoMachine setDelegate:barista];
        [espressoMachine makeEspresso];
    }
    return 0;
}
