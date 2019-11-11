//
//  ProjectEulerTests.swift
//  ProjectEulerTests
//
//  Created by Rodney Sampson on 9/21/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
import ProjectEuler

class ProjectEulerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testQuestionOne() {
        let result = questionOne(upperBound: 1000)
        let expected = 233168
        XCTAssertEqual(expected, result)
    }
    
    func testQuestionThree() {
        let result = questionThree(upperBound: 13195)
        let expected = 29
        XCTAssertEqual(expected, result)
    }
    
    func testQuestionTen() {
        let result = questionTen(upperBound: 10)
        let expected = 17
        XCTAssertEqual(expected, result)
    }
    
    func testQuestionTwenty() {
        let result = questionTwenty(n: 10)
        let expected = 3628800
        XCTAssertEqual(expected, result)
    }
    
}
