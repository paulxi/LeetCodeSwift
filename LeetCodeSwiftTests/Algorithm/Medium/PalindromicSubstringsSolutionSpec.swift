//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class PalindromicSubstringsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Palindromic Substrings") {
            it("'abc' should return 3") {
                let solution = PalindromicSubstringsSolution()
                expect(solution.countSubstrings("abc")).to(equal(3))
            }

            it("'aaa' should return 6") {
                let solution = PalindromicSubstringsSolution()
                expect(solution.countSubstrings("aaa")).to(equal(6))
            }
        }
    }
}
