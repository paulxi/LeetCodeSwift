//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class RemoveDuplicatesFromSortedArraySolutionSpec: QuickSpec {
    override func spec() {
        describe("Remove Duplicates from Sorted Array") {
            it("[1,1,2] should return 2") {
                let solution = RemoveDuplicatesFromSortedArraySolution()
                var input = [1, 1, 2]
                let length = solution.removeDuplicates(&input)
                expect(length).to(equal(2))
                expect(input[0..<length]).to(equal([1, 2]))
            }

            it("[0,0,1,1,1,2,2,3,3,4] should return 5") {
                let solution = RemoveDuplicatesFromSortedArraySolution()
                var input = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
                let length = solution.removeDuplicates(&input)
                expect(length).to(equal(5))
                expect(input[0..<length]).to(equal([0, 1, 2, 3, 4]))
            }
        }
    }
}
