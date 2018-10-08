//
// Created by Xi, Paul on 10/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LinkedListCycleSolutionSpec: QuickSpec {
    override func spec() {
        describe("Linked List Cycle") {
            it("1->2->3->4->5->NULL should return false") {
                let solution = LinkedListCycleSolution()
                let listNode = ListNode(1)
                listNode.next = ListNode(2)
                listNode.next!.next = ListNode(3)
                listNode.next!.next!.next = ListNode(4)
                listNode.next!.next!.next!.next = ListNode(5)

                expect(solution.hasCycle(listNode)).to(equal(false))
            }

            it("1->2->3->4->1 should return true") {
                let solution = LinkedListCycleSolution()
                let listNode = ListNode(1)
                listNode.next = ListNode(2)
                listNode.next!.next = ListNode(3)
                listNode.next!.next!.next = ListNode(4)
                listNode.next!.next!.next!.next = listNode

                expect(solution.hasCycle(listNode)).to(equal(true))
            }
        }
    }
}
