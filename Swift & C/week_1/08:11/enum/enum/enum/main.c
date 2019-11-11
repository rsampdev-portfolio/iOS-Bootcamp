//
//  main.c
//  enum
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include "Color.h"

int main(int argc, const char * argv[]) {
    printf("What's your favorite color!\n");
    
    Color colorChosen = Color_Null;
    int numberOfItemsScanned = 0;
    
    while ((numberOfItemsScanned != 1) || (colorChosen < Color_First) ||(colorChosen > Color_Last)) {
        printf("Please enter:\n");
        printf("    %d for red!\n", Color_Red);
        printf("    %d for orange!\n", Color_Orange);
        printf("    %d for yellow!\n", Color_Yellow);
        printf("    %d for green!\n", Color_Green);
        printf("    %d for blue!\n", Color_Blue);
        printf("    %d for indigo!\n", Color_Indigo);
        printf("    %d for violet!\n", Color_Violet);
        printf("    %d for indigo!\n", Color_Black);
        printf("    %d for violet!\n\n", Color_White);
        
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", &colorChosen);
    }
    
    char * colorAsString = ColorGetStringName(colorChosen);
    printf("\nYou chose the color %s", colorAsString);
    
    if (colorAsString == NULL) {
        return 1;
    }
    
    return 0;
}

void getWordFromUser(char * destination, char prompt[]) {
    int numberOfItemsScanned = -1;
    unsigned long stringLength = 0;
    
    while (numberOfItemsScanned != 1 || stringLength == 0) {
        printf("%s", prompt);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%s", destination);
        stringLength = strlen(destination);
    }
    
}
