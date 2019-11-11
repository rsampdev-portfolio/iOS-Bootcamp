//
//  main.m
//  Self Portrait
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "UserInput.h"

void start(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        start();
    }
    return 0;
}

void start(void) {
    
    Person *person = [Person new];
    NSInteger choice = -1;
    BOOL addingInterests = YES;
    
    [person setName:getStringFromUser(150, @"\n\nEnter your name for your self portrait. You name must be 150 characters or less.\n\n")];
    [person setAge:getNumberFromUser(150, @"\n\nEnter your age for your self portrait. You can not be older than 150.")];
    
    while (addingInterests) {
        [person addInterests:getStringFromUser(150, @"Enter one of your interests.")];
        
        choice = getNumberFromUser(1 ,@"\n\nIf you want to add another interest enter 0. If you are done enter 1.");
        
        if (choice == 1) {
            addingInterests = false;
        }
    }
    
    NSLog(@"%@", person);
    
    
}
