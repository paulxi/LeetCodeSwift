//
// Created by Xi, Paul on 3/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MedianOfTwoSortedArraysSolutionSpec: QuickSpec {

    override func spec() {
        describe("Median of Two Sorted Arrays") {
            it("case 1") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([1, 3], [2])).to(equal(2.0))
            }

            it("case 2") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([1, 2], [3, 4])).to(equal(2.5))
            }

            it("case 3") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([3, 4], [1, 2])).to(equal(2.5))
            }

            it("case 4") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([1, 2, 3], [4, 5])).to(equal(3.0))
            }

            it("case 5") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([4, 5], [1, 2, 3])).to(equal(3.0))
            }

            it("case 6") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([], [1])).to(equal(1.0))
            }

            it("case 7") {
                let solution = MedianOfTwoSortedArraysSolution()
                expect(solution.findMedianSortedArrays([], [])).to(equal(0.0))
            }
        }
    }
}
