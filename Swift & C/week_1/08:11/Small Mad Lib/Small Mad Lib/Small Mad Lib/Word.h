//
//  Word.h
//  Small Mad Lib
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#ifndef Word_h
#define Word_h

#include <stdio.h>

typedef enum Adjective {
    Adjective_Red = 1,
    Adjective_Green,
    Adjective_Blue
} Adjective;

typedef enum Noun {
    Noun_Rock = 1,
    Noun_Stone,
    Noun_Pebble
} Noun;

typedef enum Verb {
    Verb_Hop = 1,
    Verb_Jump,
    Verb_Leap
} Verb;

char * getAdjective(Adjective index);

char * getNoun(Noun index);

char * getVerb(Verb index);

#endif /* Word_h */
