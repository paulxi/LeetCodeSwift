//
// Created by Xi, Paul on 11/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LowestCommonAncestorOfABinarySearchTreeSolutionSpec: QuickSpec {
    override func spec() {
        describe("Lowest Common Ancestor Of a Binary Tree") {
            it("root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8 should return 6") {
                let solution = LowestCommonAncestorOfABinarySearchTreeSolution()
                let root = TreeNode(6)
                root.left = TreeNode(2)
                root.left!.left = TreeNode(0)
                root.left!.right = TreeNode(4)
                root.left!.right!.left = TreeNode(3)
                root.left!.right!.right = TreeNode(5)

                root.right = TreeNode(8)
                root.right!.left = TreeNode(7)
                root.right!.right = TreeNode(9)

                expect(solution.lowestCommonAncestor(root, root.left, root.right)).to(equal(root))
            }

            it("root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4 should return 2") {
                let solution = LowestCommonAncestorOfABinarySearchTreeSolution()
                let root = TreeNode(6)
                root.left = TreeNode(2)
                root.left!.left = TreeNode(0)
                root.left!.right = TreeNode(4)
                root.left!.right!.left = TreeNode(3)
                root.left!.right!.right = TreeNode(5)

                root.right = TreeNode(8)
                root.right!.left = TreeNode(7)
                root.right!.right = TreeNode(9)

                expect(solution.lowestCommonAncestor(root, root.left, root.left!.right!.right)).to(equal(root.left))
            }
        }
    }
}
