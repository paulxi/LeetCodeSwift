//
// Created by Xi, Paul on 11/9/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LargestRectangleInHistogramSolutionSpec: QuickSpec {
    override func spec() {
        describe("Largest Rectangle in Histogram") {
            it("[2,1,5,6,2,3] should return 10") {
                let solution = LargestRectangleInHistogramSolution()
                expect(solution.largestRectangleArea([2, 1, 5, 6, 2, 3])).to(equal(10))
            }

            it("[0, 0, 0, 0, 0, 0, 0, 0, 2147483647] should return 10") {
                let solution = LargestRectangleInHistogramSolution()
                expect(solution.largestRectangleArea([0, 0, 0, 0, 0, 0, 0, 0, 2147483647])).to(equal(2147483647))
            }
        }
    }
}
