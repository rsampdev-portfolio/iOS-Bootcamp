//
//  main.c
//  guessing
//
//  Created by Rodney Sampson on 8/9/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void askForNumber(void);
bool isValidGuess(int guess);

int main(int argc, const char * argv[]) {
    
    int answer = arc4random_uniform(100);
    int numberOfItemsScanned = 0;
    int counter = 9;
    int guess = -1;
    
    askForNumber();
    
    while (!isValidGuess(guess)) {
        fpurge(stdin);
        
        numberOfItemsScanned = scanf("%d", &guess);
        
        if (numberOfItemsScanned != 1 || !isValidGuess(guess)) {
            askForNumber();
            guess = -1;
            continue;
        }
        
        else if (counter == 0) {
            if (guess == answer) {
                printf("\nYou Win! The answer was %d\n\n", answer);
                break;
            }
            printf("\nYou Lose! The answer was %d\n\n", answer);
            break;
        } else if (guess == answer) {
            printf("\nYou Win! The answer was %d\n\n", answer);
            break;
        } else if (guess < answer) {
            printf("\nTry again! Aim higher. %d chances left\n\n", counter);
            counter--;
        } else if (guess > answer) {
            printf("\nTry again! Aim lower. %d chances left\n\n", counter);
            counter--;
        }
        
        guess = -1;
    }
    
    return 0;
}

void askForNumber(void) {
    printf("Enter a number between 0 and 99: \n\n");
}

bool isValidGuess(int guess) {
    return (guess >= 0 && guess < 100);
}
