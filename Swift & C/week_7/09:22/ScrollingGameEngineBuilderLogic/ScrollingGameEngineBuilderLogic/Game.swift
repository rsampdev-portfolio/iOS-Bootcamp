//
//  Game.swift
//  ScrollingGameEngineBuilderLogic
//
//  Created by Rodney Sampson on 9/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import Foundation

class Game {
    
    var mainEntity: Entity?
    var currentLevel: Level? {
        didSet {
            self.currentLevel?.insertEntity(mainEntity!, atIndex: 0)
        }
    }
    var levels: [Level]?
    
    init(mainEntity: Entity, level: Level) {
        self.levels = []
        self.mainEntity = mainEntity
        self.currentLevel = level
        self.levels?.append(currentLevel!)
        self.currentLevel!.insertEntity(mainEntity, atIndex: 0)
    }
    
    init(mainEntity: Entity, firstLevel: Level, levels: [Level]) {
        self.levels = []
        self.mainEntity = mainEntity
        self.levels = levels
        
        if (self.levels?.contains(firstLevel))! {
            self.levels?.remove(at: (self.levels?.index(of: firstLevel))!)
        }
        
        self.levels?.insert(firstLevel, at: 0)
        self.currentLevel = levels.first
        self.currentLevel!.insertEntity(mainEntity, atIndex: 0)
    }
    
    init?(dictionary: [String: AnyObject]?) {
        let levelDict = dictionary?["level"]
        let entityDict = levelDict?["entity"]
        
        let entity = Entity(dictionary: entityDict as? [String : AnyObject])
        let level = Level(dictionary: levelDict as? [String : AnyObject])
        
        self.mainEntity = entity
        self.currentLevel = level
    }
    
    func changeLevel(_ level: Level) {
        self.levels?.remove(at: (self.levels?.index(of: currentLevel!))!)
        self.currentLevel = level
    }
    
    func addLevel(_ newLevel: Level) {
        if self.levels == nil {
            self.levels = []
        }
        self.levels?.append(newLevel)
    }
    
    func changeMainEntity(_ newEntity: Entity) {
        self.mainEntity = newEntity
    }
    
}

extension Game: Equatable {
    
    static func ==(rhs: Game, lhs: Game) -> Bool {
        return rhs.mainEntity! == lhs.mainEntity! && rhs.levels! == lhs.levels!
    }
    
}
