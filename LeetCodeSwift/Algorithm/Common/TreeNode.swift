//
// Created by Xi, Paul on 10/3/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

public class TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val &&
                lhs.left == rhs.left &&
                lhs.right == rhs.right
    }

    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init(_ val: Int) {
        self.val = val
    }
}
