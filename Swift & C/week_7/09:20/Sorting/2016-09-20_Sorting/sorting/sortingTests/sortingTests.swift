//
//  sortingTests.swift
//  sortingTests
//
//  Created by TJ Usiyan on 2016/20/09.
//  Copyright © 2016 Buttons and Lights LLC. All rights reserved.
//

import XCTest
import sorting

class sortingTests: XCTestCase {
    
    func testBubbleSort() {
        let case1 = [8, 6, 7, 5, 3, 0, 9]
        let case2 = [8, 5, 3, 2, 6, 9, 1]
        let case3: [Int] = []
        let case4 = [9001]
        let case5 = [3, 1]
        
        XCTAssertEqual(bubbleSort(case1), case1.sorted(by: <))
        XCTAssertEqual(bubbleSort(case2), case2.sorted(by: <))
        XCTAssertEqual(bubbleSort(case3), case3.sorted(by: <))
        XCTAssertEqual(bubbleSort(case4), case4.sorted(by: <))
        XCTAssertEqual(bubbleSort(case5), case5.sorted(by: <))

    }
    
}
