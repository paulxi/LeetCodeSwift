//
// Created by Xi, Paul on 11/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ReverseNodesInKGroupSolutionSpec: QuickSpec {
    override func spec() {
        describe("Reverse Nodes in k-Group") {
            it("1->2->3->4->5, k=2 should return 2->1->4->3->5") {
                let solution = ReverseNodesInKGroupSolution()
                let head = ListNode(1)
                head.next = ListNode(2)
                head.next!.next = ListNode(3)
                head.next!.next!.next = ListNode(4)
                head.next!.next!.next!.next = ListNode(5)

                let expected = ListNode(2)
                expected.next = ListNode(1)
                expected.next!.next = ListNode(4)
                expected.next!.next!.next = ListNode(3)
                expected.next!.next!.next!.next = ListNode(5)

                expect(solution.reverseKGroup(head, 2)).to(equal(expected))
            }

            it("1->2->3->4->5, k=3 should return 3->2->1->4->5") {
                let solution = ReverseNodesInKGroupSolution()
                let head = ListNode(1)
                head.next = ListNode(2)
                head.next!.next = ListNode(3)
                head.next!.next!.next = ListNode(4)
                head.next!.next!.next!.next = ListNode(5)

                let expected = ListNode(3)
                expected.next = ListNode(2)
                expected.next!.next = ListNode(1)
                expected.next!.next!.next = ListNode(4)
                expected.next!.next!.next!.next = ListNode(5)

                expect(solution.reverseKGroup(head, 3)).to(equal(expected))
            }
        }
    }
}
