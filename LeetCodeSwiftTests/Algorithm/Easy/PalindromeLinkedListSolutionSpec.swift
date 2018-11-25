//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class PalindromeLinkedListSolutionSpec: QuickSpec {
    override func spec() {
        describe("Palindrome Linked List") {
            it("1->2 should return false") {
                let solution = PalindromeLinkedListSolution()
                let head = ListNode(1)
                head.next = ListNode(2)
                expect(solution.isPalindrome(head)).to(equal(false))
            }

            it("1->2->2->1 should return true") {
                let solution = PalindromeLinkedListSolution()
                let head = ListNode(1)
                head.next = ListNode(2)
                head.next!.next = ListNode(2)
                head.next!.next!.next = ListNode(1)
                expect(solution.isPalindrome(head)).to(equal(true))
            }
        }
    }
}
