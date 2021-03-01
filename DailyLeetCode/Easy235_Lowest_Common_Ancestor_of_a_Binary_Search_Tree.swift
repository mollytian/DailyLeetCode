//
//  Easy235_Lowest_Common_Ancestor_of_a_Binary_Search_Tree.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/1.
//

import Foundation

class Easy235_Lowest_Common_Ancestor_of_a_Binary_Search_Tree {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root, let q = q, let p = p else {
            return nil
        }

        if root.val > p.val && root.val > q.val {
            return lowestCommonAncestor(root.left, p, q)
        } else if root.val < p.val && root.val < q.val {
            return lowestCommonAncestor(root.right, p, q)
        } else {
            return root
        }
        
    }
}
