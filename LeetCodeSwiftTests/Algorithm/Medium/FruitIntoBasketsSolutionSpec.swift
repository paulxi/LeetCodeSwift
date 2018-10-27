//
// Created by Xi, Paul on 10/26/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class FruitIntoBasketsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Fruit Into Baskets") {
            it("[1,2,1] should return 3") {
                let solution = FruitIntoBasketsSolution()
                expect(solution.totalFruit([1, 2, 1])).to(equal(3))
            }

            it("[0,1,2,2] should return 3") {
                let solution = FruitIntoBasketsSolution()
                expect(solution.totalFruit([0, 1, 2, 2])).to(equal(3))
            }

            it("[1,2,3,2,2] should return 4") {
                let solution = FruitIntoBasketsSolution()
                expect(solution.totalFruit([1, 2, 3, 2, 2])).to(equal(4))
            }

            it("[3,3,3,1,2,1,1,2,3,3,4] should return 5") {
                let solution = FruitIntoBasketsSolution()
                expect(solution.totalFruit([3, 3, 3, 1, 2, 1, 1, 2, 3, 3, 4])).to(equal(5))
            }
        }
    }
}
