//
//  Exercises.m
//  WarmUp_1
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

- (BOOL)shouldSuspectMonkeys:(BOOL)aIsSmiling bIsSmiling:(BOOL)bIsSmiling {
    BOOL shouldSuspectMonkeys = NO;
    
    if ((aIsSmiling && bIsSmiling) || (!aIsSmiling && !bIsSmiling)) {
        shouldSuspectMonkeys = YES;
    }
    
    return shouldSuspectMonkeys;
}

- (NSInteger)sumDouble:(NSInteger)leftHandSide rightHandSide:(NSInteger)rightHandSide {
    NSInteger sum = leftHandSide + rightHandSide;
    
    if (leftHandSide == rightHandSide) {
        sum *= 2;
    }
    
    return sum;
}

- (NSInteger)absoluteDiff21:(NSInteger)input {
    NSInteger difference = labs(21 - input);
    
    if (input > 21) {
        difference *= 2;
    }
    
    return difference;
}

- (BOOL)parrotTrouble:(BOOL)isTalking time:(NSInteger)hour {
    BOOL isInTrouble = NO;
    
    if ((isTalking && hour < 7) || (isTalking && hour > 20)) {
        isInTrouble = YES;
    }

    return isInTrouble;
}

- (BOOL)makes10:(NSInteger)leftHandSide rightHandSide:(NSInteger)rightHandSide {
    BOOL isTen = NO;

    if ((leftHandSide == 10 || rightHandSide == 10) || (leftHandSide + rightHandSide) == 10) {
        isTen = YES;
    }
    
    return isTen;
}

- (BOOL)nearHundred:(NSInteger)input {
    BOOL isNearHundred = NO;
    NSInteger number = labs(input);
    
    if ((number >= 90 && number <= 110)) {
        isNearHundred = YES;
    } else if ((number >= 190 && number <= 210)) {
        isNearHundred = YES;
    }
    
    return isNearHundred;
}

- (BOOL)positiveNegative:(NSInteger)leftHandSide rightHandSide:(NSInteger)rightHandSide negative:(BOOL)wantNegative {
    BOOL isValid = NO;
    
    if (wantNegative == true && rightHandSide < 0 && leftHandSide < 0) {
        isValid = YES;
    }
    
    if ((rightHandSide < 0 && leftHandSide >= 0) || (leftHandSide < 0 && rightHandSide >= 0)) {
        isValid = YES;
    }
    
    return isValid;
}

- (NSString *)notString:(NSString *)input {
    NSString * firstThreeLetters = [input substringToIndex:3];
    
    if ([firstThreeLetters isEqualToString: @"not"] == NO) {
        return [NSString stringWithFormat:@"%@%@", @"not", input];
    }
    
    return input;
}

@end
