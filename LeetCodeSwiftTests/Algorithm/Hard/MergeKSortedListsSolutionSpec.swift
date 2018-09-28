//
// Created by Xi, Paul on 9/27/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MergeKSortedListsSolutionSpec: QuickSpec {

    override func spec() {
        describe("Merge K Sorted Lists") {
            it("should work") {
                let l1 = ListNode(1)
                l1.next = ListNode(4)
                l1.next!.next = ListNode(5)

                let l2 = ListNode(1)
                l2.next = ListNode(3)
                l2.next!.next = ListNode(4)

                let l3 = ListNode(2)
                l3.next = ListNode(6)

                let expected = ListNode(1)
                expected.next = ListNode(1)
                expected.next!.next = ListNode(2)
                expected.next!.next!.next = ListNode(3)
                expected.next!.next!.next!.next = ListNode(4)
                expected.next!.next!.next!.next!.next = ListNode(4)
                expected.next!.next!.next!.next!.next!.next = ListNode(5)
                expected.next!.next!.next!.next!.next!.next!.next = ListNode(6)

                let solution = MergeKSortedListsSolution()
                expect(solution.mergeKLists([l1, l2, l3])).to(equal(expected))
            }
        }
    }
}
