//
// Created by Xi, Paul on 11/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LowestCommonAncestorOfABinaryTreeSolutionSpec: QuickSpec {

    override func spec() {
        describe("Lowest Common Ancestor Of a Binary Tree") {
            it("root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 1 should return 3") {
                let solution = LowestCommonAncestorOfABinaryTreeSolution()
                let root = TreeNode(3)
                root.left = TreeNode(5)
                root.left!.left = TreeNode(6)
                root.left!.right = TreeNode(2)
                root.left!.right!.left = TreeNode(7)
                root.left!.right!.right = TreeNode(4)

                root.right = TreeNode(1)
                root.right!.left = TreeNode(0)
                root.right!.right = TreeNode(8)

                expect(solution.lowestCommonAncestor(root, root.left, root.right)).to(equal(root))
            }

            it("root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 4 should return 5") {
                let solution = LowestCommonAncestorOfABinaryTreeSolution()
                let root = TreeNode(3)
                root.left = TreeNode(5)
                root.left!.left = TreeNode(6)
                root.left!.right = TreeNode(2)
                root.left!.right!.left = TreeNode(7)
                root.left!.right!.right = TreeNode(4)

                root.right = TreeNode(1)
                root.right!.left = TreeNode(0)
                root.right!.right = TreeNode(8)

                expect(solution.lowestCommonAncestor(root, root.left, root.left!.right!.right)).to(equal(root.left))
            }
        }
    }
}
