//
// Created by Xi, Paul on 9/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class RegularExpressionMatchingSolutionSpec: QuickSpec {
    override func spec() {
        describe("Regular Expression Matching") {
            it("case 1") {
                let solution = RegularExpressionMatchingSolution()
                expect(solution.isMatch("aa", "a")).to(equal(false))
            }

            it("case 2") {
                let solution = RegularExpressionMatchingSolution()
                expect(solution.isMatch("aa", "a*")).to(equal(true))
            }

            it("case 3") {
                let solution = RegularExpressionMatchingSolution()
                expect(solution.isMatch("ab", ".*")).to(equal(true))
            }

            it("case 4") {
                let solution = RegularExpressionMatchingSolution()
                expect(solution.isMatch("aab", "c*a*b")).to(equal(true))
            }

            it("case 5") {
                let solution = RegularExpressionMatchingSolution()
                expect(solution.isMatch("mississippi", "mis*is*p*.")).to(equal(false))
            }

            it("case 6") {
                let solution = RegularExpressionMatchingSolution()
                expect(solution.isMatch("aaa", "a*")).to(equal(true))
            }
        }
    }
}
