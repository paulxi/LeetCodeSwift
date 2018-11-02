//
// Created by Xi, Paul on 9/22/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class WordBreakSolutionSpec: QuickSpec {

    override func spec() {
        describe("Word Break") {
            it("'leetcode' should return true") {
                let solution = WordBreakSolution()
                expect(solution.wordBreak("leetcode", ["leet", "code"])).to(equal(true))
            }

            it("'applepenapple' should return true") {
                let solution = WordBreakSolution()
                expect(solution.wordBreak("applepenapple", ["apple", "pen"])).to(equal(true))
            }

            it("'catsandog' should return true") {
                let solution = WordBreakSolution()
                expect(solution.wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"])).to(equal(false))
            }
        }
    }
}
