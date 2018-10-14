//
// Created by Xi, Paul on 10/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MergeSortedArraySolutionSpec: QuickSpec {
    override func spec() {
        describe("Merge Sorted Array") {
            it("[1,2,3,0,0,0], m = 3 and [2,5,6], n = 3 should return [1,2,2,3,5,6]") {
                let solution = MergeSortedArraySolution()
                var nums1 = [1, 2, 3, 0, 0, 0]
                let nums2 = [2, 5, 6]
                solution.merge(&nums1, 3, nums2, 3)
                expect(nums1).to(equal([1, 2, 2, 3, 5, 6]))
            }
        }
    }
}
