//
//  Medium1644_Lowest_Common_Ancestor_of_a_Binary_Tree_II.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/3.
//

import Foundation

class Medium1644_Lowest_Common_Ancestor_of_a_Binary_Tree_II {
    /*  Java Solution
    int count = 0;
    public TreeNode lowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q) {
        TreeNode res = helper(root, p, q);
        return count == 2 ? res : null;
    }
    
    public TreeNode helper(TreeNode root, TreeNode p, TreeNode q) {
        //3. Exit: leaf
        if (root == null) {
            return root;
        }

        //2. Divide: root左右找，满足两个都已找到的root则返回这个root
        var left = helper(root.left, p, q);
        var right = helper(root.right, p, q);
        
        if (root.val == p.val || root.val == q.val) {
            count ++;
            return root;
        }
        
        //2.2 Conquer: 左右都找到 or 只找到一个
        if (left != null && right != null) {
            return root;
        }
        return (left != null) ? left : right;
    }
 */
}
