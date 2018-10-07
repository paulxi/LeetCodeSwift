//
// Created by Xi, Paul on 10/6/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ReverseLinkedListSolutionSpec: QuickSpec {
    override func spec() {
        describe("Reverse Linked List") {
            it("1->2->3->4->5->nil should return 5->4->3->2->1->nil") {
                let solution = ReverseLinkedListSolution()
                let listNode = ListNode(1)
                listNode.next = ListNode(2)
                listNode.next!.next = ListNode(3)
                listNode.next!.next!.next = ListNode(4)
                listNode.next!.next!.next!.next = ListNode(5)

                let expected = ListNode(5)
                expected.next = ListNode(4)
                expected.next!.next = ListNode(3)
                expected.next!.next!.next = ListNode(2)
                expected.next!.next!.next!.next = ListNode(1)

                expect(solution.reverseList(listNode)).to(equal(expected))
            }
        }
    }
}
