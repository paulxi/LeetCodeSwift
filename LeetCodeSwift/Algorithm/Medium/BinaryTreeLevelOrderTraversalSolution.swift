//
// Created by Xi, Paul on 11/14/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class BinaryTreeLevelOrderTraversalSolution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var result:[[Int]] = []
        var queue: [TreeNode] = []
        queue.append(root)

        while !queue.isEmpty {
            var subList: [Int] = []
            let size = queue.count
            for _ in 0 ..< size {
                let node = queue.remove(at: 0)
                subList.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }

            result.append(subList)
        }

        return result
    }
}
