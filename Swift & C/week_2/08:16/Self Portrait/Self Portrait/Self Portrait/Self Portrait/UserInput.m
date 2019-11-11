//
//  UserInput.m
//  Self Portrait
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString * getStringFromUser(int stringLength, NSString * prompt) {
    char * result = NULL;
    char * resultSize = malloc(sizeof(char) * stringLength);
    
    while (result != resultSize) {
        fpurge(stdin);
        NSLog(@"%@", prompt);
        result = fgets(resultSize, stringLength, stdin);
        strtok(result, "\n");
    }
    
    return @(result);
}

NSInteger getNumberFromUser(int maxValidChoice, NSString * prompt) {
    int choice = -1;
    int numberOfItemsScanned = 0;
    int firstValidChoice = 0;
    
    while ((numberOfItemsScanned != 1) || (choice < firstValidChoice || choice > maxValidChoice)) {
        NSLog(@"%@", prompt);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", &choice);
        return choice;
    }
    
    return -1;
}
