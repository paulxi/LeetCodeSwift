//
// Created by Xi, Paul on 11/5/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class WordSearchSolutionSpec: QuickSpec {
    override func spec() {
        describe("Word Search") {
            it("board = ['A','B','C','E'], ['S','F','C','S'], ['A','D','E','E']], Given word = 'ABCCED' should return true") {
                let solution = WordSearchSolution()
                expect(solution.exist([["A","B","C","E"], ["S","F","C","S"], ["A","D","E","E"]], "ABCCED")).to(equal(true))
            }

            it("board = ['A','B','C','E'], ['S','F','C','S'], ['A','D','E','E']], Given word = 'SEE' should return true") {
                let solution = WordSearchSolution()
                expect(solution.exist([["A","B","C","E"], ["S","F","C","S"], ["A","D","E","E"]], "SEE")).to(equal(true))
            }

            it("board = ['A','B','C','E'], ['S','F','C','S'], ['A','D','E','E']], Given word = 'ABCB' should return false") {
                let solution = WordSearchSolution()
                expect(solution.exist([["A","B","C","E"], ["S","F","C","S"], ["A","D","E","E"]], "ABCB")).to(equal(false))
            }
        }
    }
}
