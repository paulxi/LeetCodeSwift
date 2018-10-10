//
// Created by Xi, Paul on 10/9/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ContainerWithMostWaterSolution {
    func maxArea(_ height: [Int]) -> Int {
        guard height.count > 1 else {
            return 0
        }

        var result = 0
        var iIndex = 0
        var jIndex = height.count - 1
        while iIndex < jIndex {
            result = max(result, min(height[iIndex], height[jIndex]) * (jIndex - iIndex))
            if height[iIndex] < height[jIndex] {
                iIndex += 1
            } else {
                jIndex -= 1
            }
        }

        return result
    }
}
