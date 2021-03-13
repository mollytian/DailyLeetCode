//
//  Medium1272_Remove_Interval.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/12.
//

import Foundation

class Medium1272_Remove_Interval {
    func removeInterval(_ intervals: [[Int]], _ toBeRemoved: [Int]) -> [[Int]] {
        var results = [[Int]]()

        for interval in intervals {
            //entire toBeRemoved 在原interval外，不需要remove
            if interval[1] <= toBeRemoved[0] || interval[0] >= toBeRemoved[1] {
                results.append(interval)
                continue
            }

            // partial toBeRemoved 在原interval右侧
            if interval[0] < toBeRemoved[0] {
                results.append([interval[0], toBeRemoved[0]])
            }

            // partial toBeRemoved 在原interval左侧
            if interval[1] > toBeRemoved[1] {
                results.append([toBeRemoved[1], interval[1]])
            }
        }
        return results
    }
}
