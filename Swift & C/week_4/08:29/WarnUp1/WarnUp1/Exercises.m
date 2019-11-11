//
//  Exercises.m
//  WarnUp1
//
//  Created by Rodney Sampson on 8/29/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Exercises.h"

@implementation Exercises

- (BOOL)canSleepIn:(BOOL)isWeekday onVacation:(BOOL)onVacation {
    BOOL canSleepIn = NO;
    
    if (!isWeekday || onVacation) {
        canSleepIn = YES;
    }
    
    return canSleepIn;
}

@end
