//
//  Bubble.swift
//  sorting
//
//  Created by TJ Usiyan on 2016/20/09.
//  Copyright © 2016 Buttons and Lights LLC. All rights reserved.
//

import Foundation

public func bubbleSort(_ list: [Int]) -> [Int] {
    if list.count <= 1 {
        return list
    }
    
    var newList = list
    var sorted = false

    while sorted == false {
        sorted = true
        
        for i in newList.startIndex..<newList.count - 1 {
            let this = newList[i]
            let next = newList[i + 1]
            
            if this > next {
                swap(&newList[i], &newList[i + 1])
                sorted = false
            }
        }
    }
    
    return newList
}
