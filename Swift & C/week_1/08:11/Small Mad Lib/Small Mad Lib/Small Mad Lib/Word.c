//
//  Word.c
//  Small Mad Lib
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include "Word.h"

char * getAdjective(Adjective index) {
    switch (index) {
        case Adjective_Red: {
            return "red";
        }
        case Adjective_Green: {
            return "green";
        }
        case Adjective_Blue: {
            return "blue";
        }
        default:
            return NULL;
    }
}

char * getNoun(Noun index) {
    switch (index) {
        case Noun_Rock: {
            return "rock";
        }
        case Noun_Stone: {
            return "stone";
        }
        case Noun_Pebble: {
            return "pebble";
        }
        default:
            return NULL;
    }
}

char * getVerb(Verb index) {
    switch (index) {
        case Verb_Hop: {
            return "hopped";
        }
        case Verb_Jump: {
            return "jumped";
        }
        case Verb_Leap: {
            return "leaped";
        }
        default:
            return NULL;
    }
}
