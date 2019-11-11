//
//  main.m
//  helloWorldObjC
//
//  Created by Rodney Sampson on 8/15/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSLog(@"Hello, World!");
    
    NSLog(@"That string is %lu long.", (unsigned long)[@"Hello, World!" length]);
    
    NSArray *array = @[@"Unnamed", @"Name", @"Named"];
    
    NSLog(@"THe length of %@ is %lu", array, [array count]);
    
    //char * nameAsCString = "Sampson";
    // NSString *name = [NSString stringWithCString:nameAsCString encoding:[NSStringEncoding defaultCStringEncoding]];
    //NSLog(@"My name is %@", name);
    
    int randomNumber = arc4random_uniform(100);
    NSNumber *number = @(randomNumber);
    NSLog(@"Your lucky number is %@", number);
    
    return 0;
}
