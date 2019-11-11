//
//  main.c
//  nameGame
//
//  Created by Rodney Sampson on 8/10/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>

char getCharFromUser(void);

int main(int argc, const char * argv[]) {
    
    char character = getCharFromUser();
    printf("\nYou typed a '%c'\n\n", character);
    
    return 0;
}

char getCharFromUser() {
    char userInput = '\0';
    int numberOfItemsScanned = 0;
    
    while (numberOfItemsScanned != 1) {
        fpurge(stdin);
        printf("Type a single character: ");
        numberOfItemsScanned = scanf("%c", &userInput);
    }
    
    return userInput;
}
