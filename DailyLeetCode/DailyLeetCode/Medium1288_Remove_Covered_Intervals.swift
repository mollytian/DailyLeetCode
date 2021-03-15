//
//  Medium1288_Remove_Covered_Intervals.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/14.
//

import Foundation

class Medium1288_Remove_Covered_Intervals {
    func removeCoveredIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted(by: { $0[0] <= $1[0] })
        var i = 0
        while i < intervals.count - 1 {
            let curr = intervals[i]
            let next = intervals[i + 1]
            //current interval covers next one
            if curr[0] <= next[0] && curr[1] >= next[1] {
                intervals.remove(at: i + 1)
            } else {
                i += 1
            }
        }
        return intervals.count
    }
}
