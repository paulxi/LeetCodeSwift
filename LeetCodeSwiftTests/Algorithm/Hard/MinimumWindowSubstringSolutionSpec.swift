//
// Created by Xi, Paul on 11/1/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MinimumWindowSubstringSolutionSpec: QuickSpec {
    override func spec() {
        describe("Minimum Window Substring") {
            it("S = 'ADOBECODEBANC', T = 'ABC' should return 'BANC'") {
                let solution = MinimumWindowSubstringSolution()
                expect(solution.minWindow("ADOBECODEBANC", "ABC")).to(equal("BANC"))
            }

            it("S = 'aa', T = 'aa' should return 'aa'") {
                let solution = MinimumWindowSubstringSolution()
                expect(solution.minWindow("aa", "aa")).to(equal("aa"))
            }
        }
    }
}
