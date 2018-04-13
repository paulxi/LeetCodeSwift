//
// Created by Xi, Paul on 4/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LongestPalindromeSolutionSpec: QuickSpec {

    override func spec() {
        describe("Longest Palindrome") {
            it("empty string should return ''") {
                let solution = LongestPalindromeSolution()
                expect(solution.longestPalindrome("")).to(equal(""))
            }

            it("'a' should return 'a'") {
                let solution = LongestPalindromeSolution()
                expect(solution.longestPalindrome("a")).to(equal("a"))
            }

            it("'babad' should return 'bab'") {
                let solution = LongestPalindromeSolution()
                expect(solution.longestPalindrome("babad")).to(equal("bab"))
            }

            it("'cbbd' should return 'bb'") {
                let solution = LongestPalindromeSolution()
                expect(solution.longestPalindrome("cbbd")).to(equal("bb"))
            }
        }
    }
}
