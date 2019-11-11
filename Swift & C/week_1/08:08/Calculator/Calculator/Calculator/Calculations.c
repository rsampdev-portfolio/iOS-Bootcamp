//
//  Calculations.c
//  Calculator
//
//  Created by Rodney Sampson on 8/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#include "Calculations.h"

void calculateNOddNumbers(int n) {
    
    int numbers[n * 2];
    int counter = 0;
    
    for (int i = 0; i < n * 2; i++) {
        numbers[i] = i;
    }
    
    for (int i = 0; i < n * 2; i++) {
        
        if (numbers[i] % 2 == 0 && numbers[i] != 0) {
            printf("%d ", numbers[i]);
            counter++;
            
            if (counter == n * 4) {
                break;
            }
        }
        
    }

}
