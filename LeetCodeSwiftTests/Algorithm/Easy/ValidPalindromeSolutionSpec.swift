//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ValidPalindromeSolutionSpec: QuickSpec {
    override func spec() {
        describe("Valid Palindrome") {
            it("'A man, a plan, a canal: Panama' should return true") {
                let solution = ValidPalindromeSolution()
                expect(solution.isPalindrome("A man, a plan, a canal: Panama")).to(equal(true))
            }

            it("'race a car' should return false") {
                let solution = ValidPalindromeSolution()
                expect(solution.isPalindrome("race a car")).to(equal(false))
            }
        }
    }
}
