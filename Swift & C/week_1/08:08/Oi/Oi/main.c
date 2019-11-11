//
//  main.c
//  Oi
//
//  Created by Rodney Sampson on 8/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int error = 0;
    int a = -1;
    
    printf("Enter a number between 0 and 100:");
    
    while (a < 0 || a >= 100) {
        fpurge(stdin);
        
        error = scanf("%d", &a);
        
        if (error != 1 || (a < 0 || a >= 100)) {
                printf("Enter a number between 0 and 100:");
            a = -1;
            error = 1;
        }
    }
    
    printf("%d times\n", a);
    
    for (int i = 0; i < a; i++) {
        printf("hey! ");
    }
    
    printf("\n\nOi! Oi! Oi!\n");
    
    /*char user_input[20];
    
    printf("Type in your name \n");
    
    fgets(user_input, 20, stdin);
    user_input[strlen(user_input) -1] = '\0';
    
    printf("The user has entered '%s'\n", user_input); */

    
    return 0;
}
