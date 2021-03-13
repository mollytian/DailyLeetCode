//
//  Medium57_Insert_Interval.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/12.
//

import Foundation

class Medium57_Insert_Interval {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var index = 0
        var res = [[Int]]()
        var newInterval = newInterval
        
        //Before Merge
        while index < intervals.count && newInterval[0] > intervals[index][1] {
            res.append(intervals[index])
            index += 1
        }
        
        //During Merge
        while index < intervals.count && newInterval[0] <= intervals[index][1] && newInterval[1] >= intervals[index][0] {
            let newStart = min(newInterval[0], intervals[index][0])
            let newEnd = max(newInterval[1], intervals[index][1])
            newInterval = [newStart, newEnd]
            index += 1
        }
        res.append(newInterval)
        
        //After Merge
        while index < intervals.count {
            res.append(intervals[index])
            index += 1
        }
        return res
    }
}
