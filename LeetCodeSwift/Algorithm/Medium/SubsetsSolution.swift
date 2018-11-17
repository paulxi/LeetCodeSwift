//
// Created by Xi, Paul on 11/16/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SubsetsSolution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[]]

        for num in nums {
            let size = result.count
            for idx in 0 ..< size {
                var subset = result[idx]
                subset.append(num)
                result.append(subset)
            }
        }

        return result
    }
}
