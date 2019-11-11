//
//  GrantMeAccessTests.swift
//  GrantMeAccessTests
//
//  Created by Rodney Sampson on 9/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
import GrantMeAccess

class BigScreen: Screen {
    
}

class GrantMeAccessTests: XCTestCase {
    
    var counter = 0
    
    func testCalculatorCreation() {
        let calculator = Calculator()
        XCTAssertNotNil(calculator)
        // XCTFail()
    }
    
    override func setUp() {
        super.setUp()
        counter += 1
        print("running set up: \(counter)")
    }
    
    override func tearDown() {
        super.tearDown()
        print("running tear down")
    }
    
    func testExample() {
        print("Example")
    }
    
    func testPerformanceExample() {
        self.measure {
            print("Performance Example")
        }
    }
    
}
