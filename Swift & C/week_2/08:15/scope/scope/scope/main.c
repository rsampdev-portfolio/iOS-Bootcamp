//
//  main.c
//  scope
//
//  Created by Rodney Sampson on 8/15/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>
#include <stdbool.h>

int variable = 1;

int main(int argc, const char * argv[]) {
    printf("variable: %d\n\n", variable);
    
    int variable = 2;
    printf("variable: %d\n\n", variable);
    
    if (1) {
        int variable = 3;
        printf("variable: %d\n\n", variable);
    }
    
    return 0;
}
