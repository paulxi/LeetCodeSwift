//
// Created by Xi, Paul on 11/12/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class KthLargestElementInAnArraySolutionSpec: QuickSpec {
    override func spec() {
        describe("Kth Largest Element in an Array") {
            it("[3,2,1,5,6,4] and k = 2 should return 5") {
                let solution = KthLargestElementInAnArraySolution()
                expect(solution.findKthLargest([3, 2, 1, 5, 6, 4], 2)).to(equal(5))
            }

            it("[3,2,3,1,2,4,5,5,6] and k = 4 should return 5") {
                let solution = KthLargestElementInAnArraySolution()
                expect(solution.findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)).to(equal(4))
            }
        }
    }
}
