//
// Created by Xi, Paul on 10/17/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PowXnSolution {
    func myPow(_ num: Double, _ pow: Int) -> Double {
        let power: Int64 = pow < 0 ? -Int64(pow) : Int64(pow)
        let number = pow < 0 ? (1 / num) : num

        var result = 1.0
        var production = number
        var idx = power
        while idx > 0 {
            if idx % 2 == 1 {
                result *= production
            }
            production *= production

            idx /= 2
        }

        return result
    }
}
