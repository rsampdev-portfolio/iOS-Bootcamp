//
//  UserInput.c
//  Small Mad Lib
//
//  Created by Rodney Sampson on 8/12/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include "UserInput.h"
#include <string.h>

void getWordFromUser(char * destination, char prompt[]) {
    int numberOfItemsScanned = -1;
    unsigned long stringLength = 0;
    
    while (numberOfItemsScanned != 1 || stringLength == 0) {
        printf("%s", prompt);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%[^\n]", destination);
        stringLength = strlen(destination);
    }
}

void getNumberFromUser(int * destination, char prompt[]) {
    int numberOfItemsScanned = -1;
    
    while (numberOfItemsScanned != 1) {
        printf("%s", prompt);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", destination);
    }
}
