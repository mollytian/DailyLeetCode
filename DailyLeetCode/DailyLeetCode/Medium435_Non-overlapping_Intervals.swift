//
//  Medium435_Non-overlapping_Intervals.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/14.
//

import Foundation

class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var res = 0
        
        var i = 0
        while i < intervals.count - 1 {
            let curr = intervals[i]
            let next = intervals[i + 1]
            //intervals overlap
            if curr[1] > next[0] {
                //remove the one has larger right
                if curr[1] > next[1] {
                    intervals.remove(at: i)
                } else {
                    intervals.remove(at: i + 1)
                }
                res += 1
            } else {
                i += 1
            }
        }
        return res
    }
}
