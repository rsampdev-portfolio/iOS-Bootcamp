//
//  Color.h
//  enum
//
//  Created by Rodney Sampson on 8/11/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#ifndef Color_h

#define Color_h
#include <stdio.h>
#include <limits.h>

typedef enum Color {
    Color_Red = 1,
    Color_Orange,
    Color_Yellow,
    Color_Green,
    Color_Blue,
    Color_Indigo,
    Color_Violet,
    Color_Black,
    Color_White,
    Color_Null = INT_MIN,
    Color_First = Color_Red,
    Color_Last = Color_White
} Color;

char * ColorGetStringName(Color color);

#endif /* Color_h */
