//
// Created by Xi, Paul on 9/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MaximumSubarraySolutionSpec: QuickSpec {
    override func spec() {
        describe("Maximum Subarray") {
            it("[-2, 1, -3, 4, -1, 2, 1, -5, 4] should return 6") {
                let solution = MaximumSubarraySolution()
                expect(solution.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to(equal(6))
            }

            it("[1] should return 1") {
                let solution = MaximumSubarraySolution()
                expect(solution.maxSubArray([1])).to(equal(1))
            }

            it("[-2, -1] should return -1") {
                let solution = MaximumSubarraySolution()
                expect(solution.maxSubArray([-2, -1])).to(equal(-1))
            }
        }
    }
}
