//
// Created by Xi, Paul on 9/28/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class TrappingRainWaterSolution {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 1 else {
            return 0
        }

        var leftMax: [Int] = Array(repeating: 0, count: height.count)
        leftMax[0] = height[0]
        for idx in 1 ..< height.count {
            leftMax[idx] = max(leftMax[idx - 1], height[idx])
        }

        var rightMax: [Int] = Array(repeating: 0, count: height.count)
        rightMax[height.count - 1] = height[height.count - 1]
        for idx in stride(from: height.count - 2, through: 0, by: -1) {
            rightMax[idx] = max(rightMax[idx + 1], height[idx])
        }

        var result = 0
        for idx in 1 ..< height.count - 1 {
            result += min(leftMax[idx], rightMax[idx]) - height[idx]
        }

        return result
    }
}
