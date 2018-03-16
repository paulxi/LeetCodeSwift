//
// Created by Xi, Paul on 3/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class AddTwoNumbersSolutionSpec: QuickSpec {

    override func spec() {
        describe("Add Two Numbers") {
            it("should return list 7 -> 0 -> 8") {
                let l1 = ListNode(2)
                l1.next = ListNode(4)
                l1.next!.next = ListNode(3)

                let l2 = ListNode(5)
                l2.next = ListNode(6)
                l2.next!.next = ListNode(4)

                let result = ListNode(7)
                result.next = ListNode(0)
                result.next!.next = ListNode(8)

                let solution = AddTwoNumbersSolution()
                expect(solution.addTwoNumbers(l1, l2)).to(equal(result))
            }

            it("should return list 9") {
                let l1 = ListNode(8)

                let l2 = ListNode(1)

                let result = ListNode(9)

                let solution = AddTwoNumbersSolution()
                expect(solution.addTwoNumbers(l1, l2)).to(equal(result))
            }

            it("should return list 0 -> 1") {
                let l1 = ListNode(9)
                let l2 = ListNode(1)

                let result = ListNode(0)
                result.next = ListNode(1)

                let solution = AddTwoNumbersSolution()
                expect(solution.addTwoNumbers(l1, l2)).to(equal(result))
            }

            it("should return list 0 -> 1") {
                let l1 = ListNode(9)
                l1.next = ListNode(9)

                let l2 = ListNode(1)

                let result = ListNode(0)
                result.next = ListNode(0)
                result.next!.next = ListNode(1)

                let solution = AddTwoNumbersSolution()
                expect(solution.addTwoNumbers(l1, l2)).to(equal(result))
            }
        }
    }

}
