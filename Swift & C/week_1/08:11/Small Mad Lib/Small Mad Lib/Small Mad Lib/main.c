//
//  main.c
//  Small Mad Lib
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include "Word.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "UserInput.h"

void start();

int main(int argc, const char * argv[]) {
    
    start();
    
    return 0;
}

void start() {
    char userName[] = "";
    char * adjective = "";
    char * noun = "";
    char * verb = "";
    
    int choice = -1;
    
    printf("Welcome to Small Mad Lib.\n\n");
    
    getWordFromUser(userName, "What is your name?\n\n");
    
    printf("\nTo chose an adjective enter a number 1 through 3.\n");
    
    getNumberFromUser(&choice, "\nEnter 1 for \"red\", 2 for \"green\" or 3 for \"blue\".\n\n");
    adjective = getAdjective(choice);
    
    printf("\nTo chose an noun enter a number 1 through 3.\n");
    
    getNumberFromUser(&choice, "\nEnter 1 for \"rock\", 2 for \"stone\" or 3 for \"pebble\".\n\n");
    noun = getNoun(choice);
    
    printf("\nTo chose an verb enter a number 1 through 3.\n");
    
    getNumberFromUser(&choice, "\nEnter 1 for \"hopped\", 2 for \"jumped\" or 3 for \"leaped\".\n\n");
    verb = getVerb(choice);
    
    for (int i = 0; i < 3; i++) {
        sleep(1);
        printf("\ngenerating story...\n");
    }
    sleep(1);
    printf("\ngenerating story...");
    printf("\n___________________\n");
    
    printf("\n%s was walking through the park one day when they saw a %s %s. They picked the %s up. \n\nThe %s grew legs and %s out of their hand before running away. Never to be seen again.\n\n", userName, adjective, noun, noun, noun, verb);
}
