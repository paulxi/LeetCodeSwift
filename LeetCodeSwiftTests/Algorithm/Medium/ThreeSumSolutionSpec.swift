//
// Created by Xi, Paul on 9/19/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ThreeSumSolutionSpec: QuickSpec {
    override func spec() {
        describe("Three Sum") {
            it("test case 1") {
                let solution = ThreeSumSolution()
                let result = solution.threeSum([-1, 0, 1, 2, -1, -4])
                let expected = [[-1, 0, 1], [-1, -1, 2]]
                expect(Set(result)).to(equal(Set(expected)))
            }
        }
    }
}
