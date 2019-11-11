//
//  Exercises.h
//  WarmUp_1
//
//  Created by Rodney Sampson on 8/29/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercises : NSObject

/// The parameter `isWeekday` is true if it is a weekday, and the parameter `onVacation` is true if we are on vacation. We can sleep in if it is not a weekday or we're on vacation. Return true if we cansleep in.
- (BOOL)canSleepIn:(BOOL)isWeekday onVacation:(BOOL)onVacation;

/// We have two monkeys, a and b, and the parameters `aIsSmiling` and `bIsSmiling` indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return true if we are in trouble.
- (BOOL)shouldSuspectMonkeys:(BOOL)aIsSmiling
                  bIsSmiling:(BOOL)bIsSmiling;

/// Given two int values, return their sum. Unless the two values are the same, then return double their sum.
- (NSInteger)sumDouble:(NSInteger)leftHandSide
         rightHandSide:(NSInteger)rightHandSide;

/** Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21. */
- (NSInteger)absoluteDiff21:(NSInteger)input;

/// We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return true if we are in trouble.
- (BOOL)parrotTrouble:(BOOL)isTalking
           time:(NSInteger)hour;

/// Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.
- (BOOL)makes10:(NSInteger)leftHandSide
  rightHandSide:(NSInteger)rightHandSide;

/// Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes the absolute value of a number.
- (BOOL)nearHundred:(NSInteger)input;

/// Given 2 int values, return true if one is negative and one is positive. Except if the parameter "negative" is true, then return true only if both are negative.
- (BOOL)positiveNegative:(NSInteger)leftHandSide
           rightHandSide:(NSInteger)rightHandSide
                negative:(BOOL)wantNegative;

/// Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged. Note: Use `NSString`'s class reference
- (NSString *)notString:(NSString *)input;

@end
