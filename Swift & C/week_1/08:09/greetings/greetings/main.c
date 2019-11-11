//
//  main.c
//  greetings
//
//  Created by Rodney Sampson on 8/9/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int numberOfItemsScanned = -1;
    int a = -1;
    
    printf("Enter a number between 0 and 100:");
    
    while (a <= 0 || a >= 100) {
        fpurge(stdin);
        
        numberOfItemsScanned = scanf("%d", &a);
        
        if (numberOfItemsScanned != 1 || (a <= 0 || a >= 100)) {
            printf("Enter a number between 0 and 100:");
            a = -1;
        }
    }
    
    printf("%d times\n", a);
    
    for (int i = 0; i < a; i++) {
        printf("hey! ");
    }
    
    printf("\n\nOi! Oi! Oi!\n");
    
    
    return 0;
}
