//
// Created by Xi, Paul on 10/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class NextPermutationSolutionSpec: QuickSpec {
    override func spec() {
        describe("Next Permutation") {
            it("[1,2,3] should return [1,3,2]") {
                let solution = NextPermutationSolution()
                var nums1 = [1, 2, 3]
                solution.nextPermutation(&nums1)
                expect(nums1).to(equal([1, 3, 2]))
            }

            it("[3,2,1] should return [1,2,3]") {
                let solution = NextPermutationSolution()
                var nums1 = [3, 2, 1]
                solution.nextPermutation(&nums1)
                expect(nums1).to(equal([1, 2, 3]))
            }

            it("[1,1,5] should return [1,5,1]") {
                let solution = NextPermutationSolution()
                var nums1 = [1, 1, 5]
                solution.nextPermutation(&nums1)
                expect(nums1).to(equal([1, 5, 1]))
            }
        }
    }
}
