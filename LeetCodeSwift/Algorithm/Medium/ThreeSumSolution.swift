//
// Created by Xi, Paul on 9/19/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ThreeSumSolution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else {
            return []
        }

        var result: [[Int]] = []

        let sortedNums = nums.sorted()

        for idx in 0..<sortedNums.count - 2 {
            if idx == 0 || sortedNums[idx] != sortedNums[idx - 1] {
                var low = idx + 1
                var high = sortedNums.count - 1
                let sum = 0 - sortedNums[idx]

                while low < high {
                    if sortedNums[low] + sortedNums[high] == sum {
                        result.append([sortedNums[idx], sortedNums[low], sortedNums[high]])

                        while low < high && sortedNums[low] == sortedNums[low + 1] {
                            low += 1
                        }

                        while low < high && sortedNums[high] == sortedNums[high - 1] {
                            high -= 1
                        }

                        low += 1
                        high -= 1
                    } else if sortedNums[low] + sortedNums[high] < sum {
                        low += 1
                    } else {
                        high -= 1
                    }
                }
            }
        }

        return result
    }
}
