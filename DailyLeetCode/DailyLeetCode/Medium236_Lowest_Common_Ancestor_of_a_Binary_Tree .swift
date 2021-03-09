//
//  Medium236_Lowest_Common_Ancestor_of_a_Binary_Tree .swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/2.
//

import Foundation

class Medium236_Lowest_Common_Ancestor_of_a_Binary_Tree {
    
    // root为根找A\B
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        //3. Exit: leaf
        guard root != nil else {
            return root
        }
        
        // Exit: already found
        if (root!.val == p!.val || root!.val == q!.val) {
            return root
        }
        
        //2. Divide: root左右找，满足两个都已找到的root则返回这个root
        let left = lowestCommonAncestor(root!.left, p, q)
        let right = lowestCommonAncestor(root!.right, p, q)
        
        //2.2 Conquer: 左右都找到 or 只找到一个 or 都没找到
        
        if (left != nil && right != nil) {
            return root
        }
        if (left != nil) {
            return left
        }
        if (right != nil) {
            return right
        }
        return nil
    }
}
