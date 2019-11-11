//
//  main.c
//  literals
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int intLiteral = 1;
    long longLiteral = 1;
    
    char charLiteral = '1';
    char * charStarLiteral = "1";
    char lasyStringLiteral[] = "1";
    char stringLiteral[100] = "1";
    
    int intArrayLiteral[3] = {1, 2, 3};
    intArrayLiteral[1] = 0;
    
    float floatLiterial = 1.0;
    double doubleLiterial = 1.0;
    
    return 0;
}
