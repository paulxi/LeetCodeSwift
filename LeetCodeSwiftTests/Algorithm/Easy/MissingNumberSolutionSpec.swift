//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MissingNumberSolutionSpec: QuickSpec {
    override func spec() {
        describe("Missing Number") {
            it("[3,0,1] should return 2") {
                let solution = MissingNumberSolution()
                expect(solution.missingNumber([3, 0, 1])).to(equal(2))
            }

            it("[9,6,4,2,3,5,7,0,1] should return 8") {
                let solution = MissingNumberSolution()
                expect(solution.missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1])).to(equal(8))
            }
        }
    }
}
