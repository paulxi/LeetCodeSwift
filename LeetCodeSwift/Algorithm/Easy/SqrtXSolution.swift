//
// Created by Xi, Paul on 11/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SqrtXSolution {
    func mySqrt(_ val: Int) -> Int {
        if val <= 1 {
            return val
        }

        var low = 1
        var high = val
        while low < high {
            let mid = low + (high - low) / 2
            if mid <= val / mid {
                low = mid + 1
            } else {
                high = mid
            }
        }

        return high - 1
    }
}
