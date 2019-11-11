//
//  main.c
//  Calculator
//
//  Created by Rodney Sampson on 8/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>
#include <stdbool.h>
#include<ctype.h>
#include "Math.h"
#include "Calculations.h"

int main(int argc, const char * argv[]) {
    
    bool running = true;
    char stop = 0;
    
    double firstNumber = 0;
    double secondNumber = 0;
    double answer = 0;
    
    char mathSigns[8] = {'+','-','*','/','o','p'};
    char mathSign = 0;
    
    printf("For addition type '+'\n");
    printf("For subtraction type '-'\n");
    printf("For multiplication type '*'\n");
    printf("For division type '/'\n");
    printf("For all the odd numbers from zero to n type 'o'\n");
    printf("For the first n prime numbers type 'p'\n");
    
    while (running) {
        scanf("%c", &mathSign);

        if(mathSign == mathSigns[4]) {
            int n = 0;
            printf("How many odd numbers do you want?");
            scanf("%d", &n);
            calculateNOddNumbers(n);
        } else if(mathSign == mathSigns[5]) {
            printf("\nn prime numbers\n");
        } else {
            
            bool containsSymbol = true;
            
            for (int i = 0; i < 6; i++) {
                if (mathSign == mathSigns[i]) {
                    containsSymbol = true;
                }
            }
            
            if (containsSymbol) {
                
                printf("\nType in the first number\n");
                scanf("%le", &firstNumber);
                printf("\nType in the second number\n");
                scanf("%le", &secondNumber);
                
                if (mathSign == mathSigns[0]) {
                    answer = add(firstNumber, secondNumber);
                } else if(mathSign == mathSigns[1]) {
                    answer = subtract(firstNumber, secondNumber);
                } else if(mathSign == mathSigns[2]) {
                    answer = multiply(firstNumber, secondNumber);
                } else if(mathSign == mathSigns[3]) {
                    answer = divide(firstNumber, secondNumber);
                }
                
                if (answer != 0) {
                    printf("\n%f %c %f = %f\n", firstNumber, mathSign, secondNumber, answer);
                }
                
            } else {
                printf("Please enter a valid sign\n\n");
                continue;
            }
            
        }
        
        printf("\nIf you would like to do more maths prees enter then type in another symbol\n");
        printf("\nElse type in 'n' to stop the calculator\n");
        
        fpurge(stdin);
        scanf("%c", &stop);
        
        for (int i = 0; i < 6; i++) {
            if (stop == mathSigns[i]) {
                continue;
            } else if(stop == 'n') {
                running = false;
            }
        }
    }
    
    printf("Thank you for using the Best Calculator®™. Goodbye!\n");
    
    return 0;
}
