//
//  Medium102_Binary_Tree_Level_Order_Traversal.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/2/28.
//

import Foundation

class Medium102_Binary_Tree_Level_Order_Traversal {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        var queue = [TreeNode]()
        
        guard let root = root else {
            return res
        }
        queue.append(root)
        
        while queue.count != 0 {
            var level = [Int]()
            let count = queue.count
            for _ in 0..<count {
                let node = queue.remove(at: 0)
                level.append(node.val)
                if let left = node.left {
                queue.append(left)
                }
                if let right = node.right {
                queue.append(right)
                }
            }
            res.append(level)
        }
        return res
    }
}
