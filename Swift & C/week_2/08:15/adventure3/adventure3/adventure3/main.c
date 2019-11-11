//
//  main.c
//  adventure3
//
//  Created by Rodney Sampson on 8/15/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define NAME_SIZE 150

typedef struct PlayerCharacter {
    char *name;
    int age;
    int healthPoints;
} PlayerCharacter;

int getNumberFromUser(int maxValidChoice, const char *prompt);
bool getStringFromUser(char name[], int nameLength, const char *prompt);

int main(int argc, const char * argv[]) {
    
    PlayerCharacter user;
    user.name = malloc(sizeof(char) * NAME_SIZE);
    user.age = -1;
    user.healthPoints = 100;
    
    bool haveName = false;
    while (!haveName) {
        haveName = getStringFromUser(user.name, NAME_SIZE, "What is your name?\n");
    }
    
    char prompt[256] = {'\0'};
    int numberOfCharsPrinted = snprintf(prompt, 256, "What is your age, %s?\n", user.name);
    if (numberOfCharsPrinted < 5) {
        return 1;
    }
    
    while (user.age < 0) {
        
        user.age = getNumberFromUser(150, prompt);
    }
    
    
    printf("Hello %s\n", user.name);
    printf("You are %d years old\n", user.age);
    
    int damage = arc4random_uniform(10);
    printf("You stub your toe entering the room and take %d damage.\n", damage);
    
    user.healthPoints -= damage;
    printf("You now have %d health points\n", user.healthPoints);
    
    
    free(user.name);
    return 0;
}

// Options should always start at 0 and go up.
int getNumberFromUser(int maxValidChoice, const char *prompt) {
    int choice = 0;
    int * choiceAddress = &choice;
    
    
    choice = 1;
    * choiceAddress = 2;
    
    int numberOfItemsScanned = 0;
    
    int firstValidChoice = 0;
    
    fpurge(stdin);
    printf("%s", prompt);
    numberOfItemsScanned = scanf("%d", &choice);
    if ((numberOfItemsScanned == 1) && (choice >= firstValidChoice) && (choice <= maxValidChoice)) {
        return choice;
    }
    
    return -1;
}

/// `name` is where the function will place its output.
/// `prompt` is what to display to the user before taking input
bool getStringFromUser(char name[], int nameLength, const char *prompt) {
    char *result = NULL;
    while (result != name) {
        fpurge(stdin);
        printf("%s", prompt);
        result = fgets(name, nameLength, stdin);
    }
    
    return true;
}

