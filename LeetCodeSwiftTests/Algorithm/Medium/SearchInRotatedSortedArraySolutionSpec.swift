//
// Created by Xi, Paul on 10/10/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SearchInRotatedSortedArraySolutionSpec: QuickSpec {
    override func spec() {
        describe("Search in Rotated Sorted Array") {
            it("nums = [4, 5, 6, 7, 0, 1, 2], target = 0 should return 4") {
                let solution = SearchInRotatedSortedArraySolution()
                expect(solution.search([4, 5, 6, 7, 0, 1, 2], 0)).to(equal(4))
            }

            it("nums = [4, 5, 6, 7, 0, 1, 2], target = 0 should return -1") {
                let solution = SearchInRotatedSortedArraySolution()
                expect(solution.search([4, 5, 6, 7, 0, 1, 2], 3)).to(equal(-1))
            }
        }
    }
}
