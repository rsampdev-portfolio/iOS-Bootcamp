//
//  main.c
//  NameGame
//
//  Created by Rodney Sampson on 8/10/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    fpurge(stdin);
    printf("What's your name man?\n");
    
    char name[100] = "\0";
    
    int numberOfItemsScanned = 0;
    numberOfItemsScanned = scanf("%[^\n]", name);
    
    printf("His name is %s!\n", name);
    
    return 0;
}
