//
//  Level.swift
//  ScrollingGameEngineBuilderLogic
//
//  Created by Rodney Sampson on 9/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import Foundation

class Level {
    
    var entities = [Entity]()
    
    init(entity: Entity?) {
        if entity != nil {
            insertEntity(entity!, atIndex: 0)
        }
    }
    
    init?(dictionary: [String: AnyObject]?) {
        guard let entity = Entity(dictionary: dictionary) else {
            return nil
        }
        
        self.insertEntity(entity, atIndex: 0)
    }
    
    func addEntity(_ newEntity: Entity) {
        entities.append(newEntity)
    }
    
    func removeEntity(_ entity: Entity) {
        entities.remove(at: entities.index(of: entity)!)
    }
    
    func insertEntity(_ entity: Entity, atIndex index: Int) {
        entities.insert(entity, at: index)
    }
    
}

extension Level: Equatable {
    
    public static func ==(rhs: Level, lhs: Level) -> Bool {
        return rhs.entities == lhs.entities
    }
    
}
