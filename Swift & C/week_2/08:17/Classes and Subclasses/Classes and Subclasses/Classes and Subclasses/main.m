//
//  main.m
//  Classes and Subclasses
//
//  Created by Rodney Sampson on 8/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Mammal.h"
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal * animal = [[Animal alloc] initWithSpecies:@"Animal"];
        Mammal * mammal = [[Mammal alloc] initWithSpecies:@"Mammal" hairColor:@"Brown"];
        Human * human = [[Human alloc] initWithSpecies:@"Human"hairColor:@"Brown" favoriteProgrammingLanguage:@"Java"];
        
        NSLog(@"%@", animal);
        NSLog(@"%@", mammal);
        NSLog(@"%@", human);
    
        [animal eat];
        [mammal haveLiveBirth];
        [human doHardcoreParkour];
    }
    return 0;
}
