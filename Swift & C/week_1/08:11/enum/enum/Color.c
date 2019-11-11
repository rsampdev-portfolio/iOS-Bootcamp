//
//  Color.c
//  enum
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include "Color.h"

char * ColorGetStringName(Color color) {
    switch (color) {
        case Color_Red: {
            return "red\n";
        }
        case Color_Orange: {
            return "orange\n";
        }
        case Color_Yellow: {
            return "yellow\n";
        }
        case Color_Green: {
            return "green\n";
        }
        case Color_Blue: {
            return "blue\n";
        }
        case Color_Indigo: {
            return "indigo\n";
        }
        case Color_Violet: {
            return "violet\n";
        }
        case Color_Black: {
            return "black\n";
        }
        case Color_White: {
            return "white\n";
        }
        default: {
            printf("something terrible happened!\n");
            return NULL;
        }
    }
}
