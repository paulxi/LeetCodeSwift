//
// Created by Xi, Paul on 11/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SqrtXSolutionSpec: QuickSpec {
    override func spec() {
        describe("Sqrt(x)") {
            it("4 should return 2") {
                let solution = SqrtXSolution()
                expect(solution.mySqrt(4)).to(equal(2))
            }

            it("8 should return 2") {
                let solution = SqrtXSolution()
                expect(solution.mySqrt(8)).to(equal(2))
            }
        }
    }
}
