//
// Created by Xi, Paul on 10/4/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MergeTwoSortedListsSolutionSpec: QuickSpec {

    override func spec() {
        describe("Merge Two Sorted Lists") {
            it("1->2->4 and 1->3->4 should return 1->1->2->3->4->4") {
                let solution = MergeTwoSortedListsSolution()
                let l1 = ListNode(1)
                l1.next = ListNode(2)
                l1.next!.next = ListNode(4)

                let l2 = ListNode(1)
                l2.next = ListNode(3)
                l2.next!.next = ListNode(4)

                let expected = ListNode(1)
                expected.next = ListNode(1)
                expected.next!.next = ListNode(2)
                expected.next!.next!.next = ListNode(3)
                expected.next!.next!.next!.next = ListNode(4)
                expected.next!.next!.next!.next!.next = ListNode(4)

                expect(solution.mergeTwoLists(l1, l2)).to(equal(expected))
            }
        }
    }
}
