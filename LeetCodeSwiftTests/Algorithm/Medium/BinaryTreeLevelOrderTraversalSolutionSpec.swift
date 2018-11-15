//
// Created by Xi, Paul on 11/14/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class BinaryTreeLevelOrderTraversalSolutionSpec: QuickSpec {
    override func spec() {
        describe("Binary Tree Level Order Traversal") {
            it("[3,9,20,null,null,15,7] should return [[3],[9,20],[15,7]]") {
                let solution = BinaryTreeLevelOrderTraversalSolution()
                let root = TreeNode(3)
                root.left = TreeNode(9)
                root.right = TreeNode(20)
                root.right!.left = TreeNode(15)
                root.right!.right = TreeNode(7)
                expect(solution.levelOrder(root)).to(equal([[3], [9, 20], [15, 7]]))
            }
        }
    }
}
