//
// Created by Xi, Paul on 11/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LowestCommonAncestorOfABinarySearchTreeSolution {
    public func lowestCommonAncestor(_ root: TreeNode?, _ pNode: TreeNode?, _ qNode: TreeNode?) -> TreeNode? {
        if root == nil || root == pNode || root == qNode {
            return root
        }

        let small = pNode!.val < qNode!.val ? pNode : qNode
        let big = small === pNode ? qNode : pNode

        if big!.val < root!.val {
            return lowestCommonAncestor(root!.left, small, big)
        }

        if small!.val > root!.val {
            return lowestCommonAncestor(root!.right, small, big)
        }

        return root
    }
}
