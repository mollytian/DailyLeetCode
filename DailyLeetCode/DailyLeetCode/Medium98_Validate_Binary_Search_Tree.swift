//
//  Medium98_Validate_Binary_Search_Tree.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/10.
//

import Foundation

class Medium98_Validate_Binary_Search_Tree {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isBST(root, Int.min, Int.max)
    }
    func isBST(_ root: TreeNode?, _ min: Int, _ max: Int) -> Bool {
        guard root != nil else {
            return true
        }
        if root!.val <= min || root!.val >= max {
            return false
        }
        return isBST(root!.left, min, root!.val) && isBST(root!.right, root!.val, max)
    }
}
