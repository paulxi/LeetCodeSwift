//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PermutationsIISolution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var result: [[Int]] = [[]]
        for num in sortedNums {
            var newResult: [[Int]] = []
            for list in result {
                for idx in 0 ... list.count {
                    if idx > 0 && list[idx - 1] == num {
                        break
                    }
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
