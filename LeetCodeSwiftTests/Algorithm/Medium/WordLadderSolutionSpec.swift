//
// Created by Xi, Paul on 10/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class WordLadderSolutionSpec: QuickSpec {
    override func spec() {
        describe("Word Ladder") {
            it("'hit', 'cog' should return 5") {
                let solution = WordLadderSolution()
                expect(solution.ladderLength("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"])).to(equal(5))
            }

            it("'hit', 'cog' should return 0") {
                let solution = WordLadderSolution()
                expect(solution.ladderLength("hit", "cog", ["hot", "dot", "dog", "lot", "log"])).to(equal(0))
            }

            it("'hot', 'dog' should return 0") {
                let solution = WordLadderSolution()
                expect(solution.ladderLength("hot", "dog", ["hot", "dog"])).to(equal(0))
            }
        }
    }
}
