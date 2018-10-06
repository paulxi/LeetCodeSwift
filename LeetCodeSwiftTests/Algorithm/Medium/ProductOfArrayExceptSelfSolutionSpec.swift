//
// Created by Xi, Paul on 10/5/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ProductOfArrayExceptSelfSolutionSpec: QuickSpec {
    override func spec() {
        describe("Product of Array Except Self") {
            it("[1,2,3,4] should return [24,12,8,6]") {
                let solution = ProductOfArrayExceptSelfSolution()
                expect(solution.productExceptSelf([1, 2, 3, 4])).to(equal([24, 12, 8, 6]))
            }
        }
    }
}
