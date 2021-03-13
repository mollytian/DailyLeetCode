//
//  Medium56_Merge_Intervals.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/10.
//

import Foundation

class Medium56_Merge_Intervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        if intervals.count < 1{
            return intervals
        }
        let intervals = intervals.sorted{$0[0] < $1[0]}
        var results = [intervals[0]]
        
        for i in 1..<intervals.count{
            let interval = intervals[i]
            let lastIndex = results.count - 1
            if results[lastIndex][1] >= interval[0] {
                results[lastIndex] = [min(results[lastIndex][0], interval[0]),
                                      max(results[lastIndex][1], interval[1])]
            } else {
                results.append(interval)
            }
        }
        return results
    }
}
