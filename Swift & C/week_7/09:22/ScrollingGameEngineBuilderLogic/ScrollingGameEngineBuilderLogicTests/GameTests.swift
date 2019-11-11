//
//  GameTests.swift
//  ScrollingGameEngineBuilderLogic
//
//  Created by Rodney Sampson on 10/4/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
@testable import ScrollingGameEngineBuilderLogic

class GameTests: XCTestCase {
    
    
    func testGameInitializedWithEntityAndLevel() {
        let entity = Entity(x: 0, y: 0, name: "entity")
        let level = Level(entity: entity)
        let game = Game(mainEntity: entity, level: level)
        XCTAssert(game.mainEntity?.name == "entity")
        XCTAssert(game.mainEntity == level.entities.first)
        XCTAssert(game.currentLevel!.entities.contains(game.mainEntity!))
    }
    
    func testGameInitializedWithEntityAndLevels() {
        let entity = Entity(x: 0, y: 0, name: "entity")
        let levelOne = Level(entity: entity)
        let levels = [levelOne, Level(entity: nil), Level(entity: nil)]
        let game = Game(mainEntity: entity, firstLevel: levelOne, levels: levels)
        XCTAssert(game.mainEntity?.name == "entity")
        XCTAssert(game.mainEntity == levelOne.entities.first)
        XCTAssert(game.currentLevel!.entities.contains(game.mainEntity!))
    }
    
    func testGameChangeLevels() {
        let entityOne = Entity(x: 0, y: 0, name: "Steve")
        let entityTwo = Entity(x: 0, y: 0, name: "Alex")
        let levelOne = Level(entity: entityOne)
        let levelTwo = Level(entity: entityTwo)
        let game = Game(mainEntity: levelOne.entities.first!, level: levelOne)
        XCTAssert(game.currentLevel == levelOne)
        game.changeLevel(levelTwo)
        XCTAssert(game.currentLevel == levelTwo)
    }
    
    func testGameAddLevels() {
        let entityOne = Entity(x: 0, y: 0, name: "Steve")
        let entityTwo = Entity(x: 0, y: 0, name: "Alex")
        let levelOne = Level(entity: entityOne)
        let levelTwo = Level(entity: entityTwo)
        let game = Game(mainEntity: levelOne.entities.first!, level: levelOne)
        XCTAssert(game.levels?.count == 1)
        game.addLevel(levelTwo)
        XCTAssert(game.levels?.count == 2)
    }
    
    func testGameChangeMainEntity() {
        let entityOne = Entity(x: 0, y: 0, name: "Steve")
        let entityTwo = Entity(x: 0, y: 0, name: "Alex")
        let levelOne = Level(entity: entityOne)
        let game = Game(mainEntity: levelOne.entities.first!, level: levelOne)
        XCTAssert(game.mainEntity == entityOne)
        game.changeMainEntity(entityTwo)
        XCTAssert(game.mainEntity == entityTwo)
    }
    
    func testGameCreationFromDictionary() {
        let dict: [String: Any] = [
            "level": [
                "entity": [
                    "x": 0,
                    "y": 0,
                    "name": "Steve"
                ]
            ]
        ]
        
        let result = Game(dictionary: dict as [String : AnyObject]?)
        
        let entity = Entity(x: 0, y: 0, name: "Steve")
        
        let level = Level(entity: entity)
        
        let expected = Game(mainEntity: entity, level: level)
        
        XCTAssert(result == expected)
    }
    
}
