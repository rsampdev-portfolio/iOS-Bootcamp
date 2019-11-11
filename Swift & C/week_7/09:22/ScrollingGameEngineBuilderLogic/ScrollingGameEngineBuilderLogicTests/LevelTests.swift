//
//  LevelTests.swift
//  ScrollingGameEngineBuilderLogic
//
//  Created by Rodney Sampson on 10/4/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
@testable import ScrollingGameEngineBuilderLogic

class LevelTests: XCTestCase {
    
    func testLevelInitializedWithEntity() {
        let entity = Entity(x: 0, y: 0, name: "Steve")
        let level = Level(entity: entity)
        XCTAssert(level.entities.count == 1)
    }
    
    func testLevelAddingEntites() {
        let entity = Entity(x: 0, y: 0, name: "Steve")
        let level = Level(entity: nil)
        XCTAssert(level.entities.count == 0)
        level.addEntity(entity)
        XCTAssert(level.entities.count == 1)
    }
    
    func testLevelRemovingEntites() {
        let entity = Entity(x: 0, y: 0, name: "Steve")
        let level = Level(entity: entity)
        XCTAssert(level.entities.count == 1)
        level.removeEntity(entity)
        XCTAssert(level.entities.count == 0)
    }
    
    func testLevelInsertingEntites() {
        let entityOne = Entity(x: 0, y: 0, name: "Steve")
        let entityTwo = Entity(x: 0, y: 0, name: "Alex")
        let level = Level(entity: entityOne)
        XCTAssert(level.entities.first == entityOne)
        level.insertEntity(entityTwo, atIndex: 0)
        XCTAssert(level.entities.first == entityTwo)
    }
    
    func testLevelCreationFromDictionary() {
        let dict: [String: Any] = [
            "x": 0,
            "y": 0,
            "name": "Steve"
        ]
        
        let result = Level(dictionary: dict as [String : AnyObject]?)
        let expected = Level(entity: Entity(x: 0, y: 0, name: "Steve"))
        XCTAssert(result == expected)
    }
    
}
