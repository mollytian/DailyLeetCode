//
//  Medium986_Interval_List_Intersections.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/12.
//

import Foundation

class Medium986_Interval_List_Intersections {
    func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        var result = [[Int]]()

        guard !A.isEmpty && !B.isEmpty else {
            return result
        }

        var indexA = 0
        var indexB = 0

        while indexA < A.count && indexB < B.count {
            let a = A[indexA]
            let b = B[indexB]

            let start = max(a[0], b[0])
            let end = min(a[1], b[1])

            if start <= end {
                result.append([start, end])
            }

            if a[1] > b[1] {
                indexB += 1
            }
            else {
                indexA += 1
            }
        }

        return result
    }
}
