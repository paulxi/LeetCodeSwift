//
// Created by Xi, Paul on 10/3/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SerializeAndDeserializeBinaryTreeSolutionSpec: QuickSpec {
    override func spec() {
        describe("Serialize and Deserialize Binary Tree") {
            it("case 1") {
                let solution = SerializeAndDeserializeBinaryTreeSolution()
                let root = TreeNode(1)
                root.left = TreeNode(2)
                root.right = TreeNode(5)
                root.left!.left = TreeNode(3)
                root.left!.right = TreeNode(4)

                let serializedStr = solution.serialize(root)
                expect(serializedStr).to(equal("[1,2,3,null,null,4,null,null,5,null,null]"))
                expect(solution.deserialize(serializedStr)).to(equal(root))
            }
        }
    }
}
