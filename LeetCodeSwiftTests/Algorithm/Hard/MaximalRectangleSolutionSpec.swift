//
// Created by Xi, Paul on 11/10/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MaximalRectangleSolutionSpec: QuickSpec {
    override func spec() {
        describe("Maximal Rectangle") {
            it("[['1','0','1','0','0'], ['1','0','1','1','1'], ['1','1','1','1','1'], ['1','0','0','1','0']] should return 6") {
                let solution = MaximalRectangleSolution()
                let input: [[Character]] = [["1", "0", "1", "0", "0"],
                                            ["1", "0", "1", "1", "1"],
                                            ["1", "1", "1", "1", "1"],
                                            ["1", "0", "0", "1", "0"]]
                expect(solution.maximalRectangle(input)).to(equal(6))
            }

            it("[['0','0','0'], ['0','0','0'], ['0','0','0'], ['0','0','0']] should return 0") {
                let solution = MaximalRectangleSolution()
                let input: [[Character]] = [["0", "0", "0"],
                                            ["0", "0", "0"],
                                            ["0", "0", "0"],
                                            ["0", "0", "0"]]
                expect(solution.maximalRectangle(input)).to(equal(0))
            }
        }
    }
}
