//
// Created by Xi, Paul on 10/3/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class BestTimeToBuyAndSellStockSolution {
    func maxProfit(_ prices: [Int]) -> Int {
        var max = 0
        var temp = 0

        if prices.count > 1 {
            for idx in 1 ..< prices.count {
                temp += prices[idx] - prices[idx - 1]
                if temp > max {
                    max = temp
                }
                if temp < 0 {
                    temp = 0
                }
            }
        }

        return max
    }
}
