//
//  Entity.swift
//  ScrollingGameEngineBuilderLogic
//
//  Created by Rodney Sampson on 10/4/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
@testable import ScrollingGameEngineBuilderLogic

class EntityTests: XCTestCase {
    
    
    func testEntityNaming() {
        let player = Entity(x: 0, y: 0, name: "Steve")
        player.changeName(name: "Alex")
        XCTAssert(player.name == "Alex")
    }
    
    func testEntityMovement() {
        let player = Entity(x: 0, y: 0, name: "Steve")
        XCTAssert(player.x == 0)
        XCTAssert(player.y == 0)
        player.moveTo(newX: 64, newY: 64)
        XCTAssert(player.x == 64)
        XCTAssert(player.y == 64)
    }
    
    func testEntityLocation() {
        let player = Entity(location: CGPoint.init(x: 0, y: 0), name: "Steve")
        XCTAssert(player.location == CGPoint.init(x: 0, y: 0))
        player.moveTo(newX: 64, newY: 64)
        XCTAssert(player.location == CGPoint.init(x: 64, y: 64))
    }
    
    func testEntityCreationFromDictionary() {
        let dict: [String: Any]? = [
            "x": 64,
            "y": 64,
            "name": "Steve"
        ]
        
        let result = Entity(dictionary: dict as [String : AnyObject]?)
        let expected = Entity(x: 64, y: 64, name: "Steve")
        XCTAssert(result == expected)
    }
    
    
}
