//
// Created by Xi, Paul on 10/9/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ContainerWithMostWaterSolutionSpec: QuickSpec {
    override func spec() {
        describe("Letter Combinations of a Phone Number") {
            it("[1,8,6,2,5,4,8,3,7] should return 49") {
                let solution = ContainerWithMostWaterSolution()
                expect(solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])).to(equal(49))
            }
        }
    }
}
