//
//  Hard732_My_Calendar_III.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/10.
//

import Foundation

class Hard732_My_Calendar_III {

    var map = [Int: Int]()
    var sortedKeys = [Int]()
    
    init() {}
    
    func book(_ start: Int, _ end: Int) -> Int {
        map[start] = map[start] == nil ? 1 : map[start]! + 1
        map[end] = map[end] == nil ? -1 : map[end]! - 1
        insertSortedKey(start)
        insertSortedKey(end)
        var ongoing = 0
        var k = 0
        for key in sortedKeys {
            ongoing += map[key]!
            k = max(k, ongoing)
        }
        
        return k
    }
    
    private func insertSortedKey(_ key: Int) {
        
        if sortedKeys.isEmpty {
            sortedKeys.append(key)
        } else {
            var start = 0
            var end = sortedKeys.count - 1
            
            while start <= end {
                let mid = (start + end)/2
                if key == sortedKeys[mid] {
                    return
                } else if sortedKeys[mid] > key {
                    end = mid - 1
                } else if sortedKeys[mid] < key {
                    start = mid + 1
                }
            }
            
            sortedKeys.insert(key, at: start)
        }
    }
}
