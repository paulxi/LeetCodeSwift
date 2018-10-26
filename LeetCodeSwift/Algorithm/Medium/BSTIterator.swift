//
// Created by Xi, Paul on 10/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class BSTIterator {
    let root: TreeNode
    var stack: [TreeNode] = []

    public init(_ root: TreeNode) {
        self.root = root
        self.pushLeftChildren(root)
    }

    public func hasNext() -> Bool {
        return stack.count > 0
    }

    public func next() -> Int {
        guard stack.count > 0 else {
            return Int.min
        }

        let node = stack.removeLast()
        self.pushLeftChildren(node.right)

        return node.val
    }

    private func pushLeftChildren(_ node: TreeNode?) {
        var cur = node
        while let tmp = cur {
            stack.append(tmp)
            cur = tmp.left
        }
    }
}
