//
// Created by Xi, Paul on 11/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class FindTheDuplicateNumberSolutionSpec: QuickSpec {
    override func spec() {
        describe("Find the Duplicate Number") {
            it("[1,3,4,2,2] should return 2") {
                let solution = FindTheDuplicateNumberSolution()
                expect(solution.findDuplicate([1, 3, 4, 2, 2])).to(equal(2))
            }

            it("[3,1,3,4,2] should return 3") {
                let solution = FindTheDuplicateNumberSolution()
                expect(solution.findDuplicate([3, 1, 3, 4, 2])).to(equal(3))
            }
        }
    }
}
