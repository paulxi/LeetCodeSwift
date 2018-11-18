//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PermutationsSolution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[]]
        for num in nums {
            var newResult: [[Int]] = []
            for list in result {
                for idx in 0 ... list.count {
                    var newList = list
                    newList.insert(num, at: idx)
                    newResult.append(newList)
                }
            }
            result = newResult
        }

        return result
    }
}
