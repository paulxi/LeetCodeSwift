//
// Created by Xi, Paul on 10/23/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class GameOfLifeSolutionSpec: QuickSpec {
    override func spec() {
        describe("Game of Life") {
            it("[[0, 1, 0], [0, 0, 1], [1, 1, 1], [0, 0, 0]] should return [[0, 0, 0], [1, 0, 1], [0, 1, 1], [0, 1, 0]]") {
                let solution = GameOfLifeSolution()
                var params = [[0, 1, 0], [0, 0, 1], [1, 1, 1], [0, 0, 0]]
                let expected = [[0, 0, 0], [1, 0, 1], [0, 1, 1], [0, 1, 0]]
                solution.gameOfLife(&params)
                expect(params[0]).to(equal(expected[0]))
                expect(params[1]).to(equal(expected[1]))
                expect(params[2]).to(equal(expected[2]))
                expect(params[3]).to(equal(expected[3]))
            }
        }
    }
}
