//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class TheSkylineProblemSolutionSpec: QuickSpec {
    override func spec() {
        describe("The Skyline Problem") {
            it("[ [2 9 10], [3 7 15], [5 12 12], [15 20 10], [19 24 8] ] should return [ [2 10], [3 15], [7 12], [12 0], [15 10], [20 8], [24, 0] ]") {
                let solution = TheSkylineProblemSolution()
                let input = [[2, 9, 10], [3, 7, 15], [5, 12, 12], [15, 20, 10], [19, 24, 8]]
                let expected = [[2, 10], [3, 15], [7, 12], [12, 0], [15, 10], [20, 8], [24, 0]]
                expect(solution.getSkyline(input)).to(equal(expected))
            }
        }
    }
}
