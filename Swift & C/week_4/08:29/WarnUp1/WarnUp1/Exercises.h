//
//  Exercises.h
//  WarnUp1
//
//  Created by Rodney Sampson on 8/29/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercises : NSObject

/// The parameter `isWeekday` is true if it is a weekday, and the parameter `onVacation` is true if we are on vacation. We can sleep in if it is not a weekday or we're on vacation. Return true if we cansleep in.
- (BOOL)canSleepIn:(BOOL)isWeekday onVacation:(BOOL)onVacation;

@end
