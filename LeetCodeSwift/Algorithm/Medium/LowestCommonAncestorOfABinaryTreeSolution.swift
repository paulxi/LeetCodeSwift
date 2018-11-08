//
// Created by Xi, Paul on 11/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LowestCommonAncestorOfABinaryTreeSolution {
    public func lowestCommonAncestor(_ root: TreeNode?, _ pNode: TreeNode?, _ qNode: TreeNode?) -> TreeNode? {
        if root == nil || root == pNode || root == qNode {
            return root
        }

        let left = lowestCommonAncestor(root!.left, pNode, qNode)
        let right = lowestCommonAncestor(root!.right, pNode, qNode)

        if let _ = left, let _ = right {
            return root
        }

        if left == nil && right == nil {
            return nil
        }

        return left == nil ? right : left
    }
}
