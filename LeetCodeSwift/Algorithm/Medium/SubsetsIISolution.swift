//
// Created by Xi, Paul on 11/17/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SubsetsIISolution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var result: [[Int]] = [[]];
        var size = 1
        for idx1 in 0 ..< sortedNums.count {
            var startIndex = 0
            if idx1 != 0 && sortedNums[idx1 - 1] == sortedNums[idx1] {
                startIndex = size
            }
            size = result.count
            for idx2 in startIndex ..< size {
                var subset = result[idx2]
                subset.append(sortedNums[idx1])
                result.append(subset)
            }
        }

        return result
    }
}
