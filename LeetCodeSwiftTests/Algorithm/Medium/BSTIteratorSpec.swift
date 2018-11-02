//
// Created by Xi, Paul on 10/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class BSTIteratorSpec: QuickSpec {
    override func spec() {
        describe("Binary Search Tree Iterator") {
            it("BST should return [3, 5, 7, 10, 12, 15, 17]") {
                var values: [Int] = []
                let root = TreeNode(10)
                root.left = TreeNode(5)
                root.right = TreeNode(15)
                root.left!.left = TreeNode(3)
                root.left!.right = TreeNode(7)
                root.right!.left = TreeNode(12)
                root.right!.right = TreeNode(17)
                let iterator = BSTIterator(root)
                while iterator.hasNext() {
                    values.append(iterator.next())
                }
                expect(values).to(equal([3, 5, 7, 10, 12, 15, 17]))
            }
        }
    }
}
