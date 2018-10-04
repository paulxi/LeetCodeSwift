//
// Created by Xi, Paul on 10/3/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class BestTimeToBuyAndSellStockSolutionSpec: QuickSpec {
    override func spec() {
        describe("Best Time to Buy and Sell Stock") {
            it("[[7,1,5,3,6,4] should return 6") {
                let solution = BestTimeToBuyAndSellStockSolution()
                expect(solution.maxProfit([7,1,5,3,6,4])).to(equal(5))
            }

            it("[7,6,4,3,1] should return 0") {
                let solution = BestTimeToBuyAndSellStockSolution()
                expect(solution.maxProfit([7,6,4,3,1])).to(equal(0))
            }
        }
    }
}
