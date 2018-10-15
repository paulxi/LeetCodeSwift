//
// Created by Xi, Paul on 10/14/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class PalindromeNumberSolutionSpec: QuickSpec {
    override func spec() {
        describe("Palindrome Number") {
            it("121 should return true") {
                let solution = PalindromeNumberSolution()
                expect(solution.isPalindrome(121)).to(equal(true))
            }

            it("-121 should return false") {
                let solution = PalindromeNumberSolution()
                expect(solution.isPalindrome(-121)).to(equal(false))
            }

            it("10 should return false") {
                let solution = PalindromeNumberSolution()
                expect(solution.isPalindrome(10)).to(equal(false))
            }
        }
    }
}
