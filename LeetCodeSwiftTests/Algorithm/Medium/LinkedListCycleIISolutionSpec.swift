//
// Created by Xi, Paul on 11/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LinkedListCycleIISolutionSpec: QuickSpec {
    override func spec() {
        describe("Linked List Cycle II") {
            it("1->2->3->4->5->NULL should return nil") {
                let solution = LinkedListCycleIISolution()
                let listNode = ListNode(1)
                listNode.next = ListNode(2)
                listNode.next!.next = ListNode(3)
                listNode.next!.next!.next = ListNode(4)
                listNode.next!.next!.next!.next = ListNode(5)

                expect(solution.detectCycle(listNode)).to(beNil())
            }

            it("1->2->3->4->2 should return 2") {
                let solution = LinkedListCycleIISolution()
                let listNode = ListNode(1)
                listNode.next = ListNode(2)
                listNode.next!.next = ListNode(3)
                listNode.next!.next!.next = ListNode(4)
                listNode.next!.next!.next!.next = listNode.next

                expect(solution.detectCycle(listNode)) === listNode.next
            }
        }
    }
}
