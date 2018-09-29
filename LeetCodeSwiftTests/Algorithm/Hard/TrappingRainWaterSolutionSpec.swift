//
// Created by Xi, Paul on 9/28/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class TrappingRainWaterSolutionSpec: QuickSpec {
    override func spec() {
        describe("Trapping Rain Water") {
            it("case 1") {
                let solution = TrappingRainWaterSolution()
                expect(solution.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])).to(equal(6))
            }
        }
    }
}
