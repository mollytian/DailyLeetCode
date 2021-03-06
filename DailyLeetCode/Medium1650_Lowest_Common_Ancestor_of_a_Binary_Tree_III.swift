//
//  Medium1650_Lowest_Common_Ancestor_of_a_Binary_Tree_III.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/6.
//

import Foundation

class Medium1650_Lowest_Common_Ancestor_of_a_Binary_Tree_III {
    func lowestCommonAncestor(_ p: Node?,_ q: Node?) -> Node? {
        let pathP = getPath(p)
        let pathQ = getPath(q)
        var lowestA: Node? = nil
        
        var i = pathP.count - 1
        var j = pathQ.count - 1
        
        while i >= 0 && j >= 0 {
            if pathP[i].val != pathQ[j].val {
                break
            }
            lowestA = pathP[i]
            i -= 1
            j -= 1
        }
        return lowestA
    }
    
    func getPath(_ node: Node?) -> [Node] {
        var path = [Node]()
        var node = node
        while node != nil {
            path.append(node!)
            guard node!.parent != nil else {
                break
            }
            node = node!.parent
        }

        return path
    }
}
