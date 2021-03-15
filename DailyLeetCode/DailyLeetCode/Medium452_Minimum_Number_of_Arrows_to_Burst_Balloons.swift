//
//  Medium452_Minimum_Number_of_Arrows_to_Burst_Balloons.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/14.
//

import Foundation

class Medium452_Minimum_Number_of_Arrows_to_Burst_Balloons {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        if points.isEmpty {
            return 0
        }
        let points = points.sorted(by: { $0[1] < $1[1] })
        var res = 1
        var i = 1
        var right = points[0][1]
        while i < points.count {
            //not overlap, need a new arrow
            if points[i][0] > right {
                res += 1
                right = points[i][1]
            }
            i += 1
        }
        return res
    }
}
