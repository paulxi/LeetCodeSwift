//
// Created by Xi, Paul on 9/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class NumberOfIslandsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Number of Islands") {
            it("test case 1 should return 1") {
                let solution = NumberOfIslandsSolution()
                expect(solution.numIslands([["1", "1", "1", "1", "0"],
                                            ["1", "1", "0", "1", "0"],
                                            ["1", "1", "0", "0", "0"],
                                            ["0", "0", "0", "0", "0"]])).to(equal(1))
            }

            it("test case 2 should return 3") {
                let solution = NumberOfIslandsSolution()
                expect(solution.numIslands([["1", "1", "0", "0", "0"],
                                            ["1", "1", "0", "0", "0"],
                                            ["0", "0", "1", "0", "0"],
                                            ["0", "0", "0", "1", "1"]])).to(equal(3))
            }

            it("test case 3 should return 1") {
                let solution = NumberOfIslandsSolution()
                expect(solution.numIslands([["1", "1", "1"],
                                            ["0", "1", "0"],
                                            ["1", "1", "1"]])).to(equal(1))
            }
        }
    }
}
