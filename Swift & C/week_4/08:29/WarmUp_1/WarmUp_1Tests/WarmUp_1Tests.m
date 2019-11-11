//
//  WarmUp_1Tests.m
//  WarmUp_1Tests
//
//  Created by Rodney Sampson on 8/29/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Exercises.h"

@interface WarmUp_1Tests : XCTestCase
@property (nonatomic, strong) Exercises * exercises;

@end

@implementation WarmUp_1Tests

- (void)testSleepIn {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises canSleepIn:YES onVacation:YES], YES);
    XCTAssertEqual([exercises canSleepIn:YES onVacation:NO], NO);
    XCTAssertEqual([exercises canSleepIn:NO onVacation:YES], YES);
    XCTAssertEqual([exercises canSleepIn:NO onVacation:NO], YES);
}

- (void)testShouldSuspectMonkeys {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises shouldSuspectMonkeys:YES bIsSmiling:YES], YES);
    XCTAssertEqual([exercises shouldSuspectMonkeys:YES bIsSmiling:NO], NO);
    XCTAssertEqual([exercises shouldSuspectMonkeys:NO bIsSmiling:YES], NO);
    XCTAssertEqual([exercises shouldSuspectMonkeys:NO bIsSmiling:NO], YES);
}

- (void)testMonkeyTrouble {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises shouldSuspectMonkeys:YES bIsSmiling:YES], YES);
    XCTAssertEqual([exercises shouldSuspectMonkeys:YES bIsSmiling:NO], NO);
    XCTAssertEqual([exercises shouldSuspectMonkeys:NO bIsSmiling:YES], NO);
    XCTAssertEqual([exercises shouldSuspectMonkeys:NO bIsSmiling:NO], YES);
}

- (void)testSumDouble {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises sumDouble:5 rightHandSide:4], 9);
    XCTAssertEqual([exercises sumDouble:5 rightHandSide:5], 20);
}

- (void)testAbsoluteDiff21 {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises absoluteDiff21:10], 11);
    XCTAssertEqual([exercises absoluteDiff21:22], 2);
}

- (void)testParrotTrouble {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises parrotTrouble:YES time:6], YES);
    XCTAssertEqual([exercises parrotTrouble:YES time:21], YES);
    XCTAssertEqual([exercises parrotTrouble:YES time:8], NO);
    XCTAssertEqual([exercises parrotTrouble:YES time:19], NO);
    XCTAssertEqual([exercises parrotTrouble:NO time:6], NO);
    XCTAssertEqual([exercises parrotTrouble:NO time:21], NO);
    XCTAssertEqual([exercises parrotTrouble:NO time:8], NO);
    XCTAssertEqual([exercises parrotTrouble:NO time:19], NO);
}

- (void)testMakesTen {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises makes10:10 rightHandSide:5], YES);
    XCTAssertEqual([exercises makes10:5 rightHandSide:5], YES);
    XCTAssertEqual([exercises makes10:4 rightHandSide:4], NO);
}

- (void)testNearHundred {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises nearHundred:90], YES);
    XCTAssertEqual([exercises nearHundred:110], YES);
    XCTAssertEqual([exercises nearHundred:190], YES);
    XCTAssertEqual([exercises nearHundred:210], YES);
    XCTAssertEqual([exercises nearHundred:89], NO);
    XCTAssertEqual([exercises nearHundred:111], NO);
    XCTAssertEqual([exercises nearHundred:189], NO);
    XCTAssertEqual([exercises nearHundred:211], NO);
}

- (void)testPositiveNegative {
    Exercises * exercises = [Exercises new];
    XCTAssertEqual([exercises positiveNegative:-1 rightHandSide:1 negative:NO], YES);
    XCTAssertEqual([exercises positiveNegative:-1 rightHandSide:-1 negative:YES], YES);
    XCTAssertEqual([exercises positiveNegative:1 rightHandSide:1 negative:NO], NO);
    XCTAssertEqual([exercises positiveNegative:-1 rightHandSide:-1 negative:NO], NO);
}

- (void)testNotString {
    Exercises * exercises = [Exercises new];
    XCTAssertEqualObjects([exercises notString:@"Test"], @"notTest");
    XCTAssertEqualObjects([exercises notString:@"not"], @"not");
}

@end
