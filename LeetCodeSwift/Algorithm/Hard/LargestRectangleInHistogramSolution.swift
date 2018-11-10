//
// Created by Xi, Paul on 11/9/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LargestRectangleInHistogramSolution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        return calculateArea(heights, 0, heights.count - 1)
    }

    private func calculateArea(_ heights: [Int], _ start: Int, _ end: Int) -> Int {
        guard start <= end else {
            return 0
        }

        var shortest = heights[start]
        var shortestIndex = start

        if start == end {
            return shortest
        } else {
            for idx in (start + 1) ... end {
                if heights[idx] < shortest {
                    shortest = heights[idx]
                    shortestIndex = idx
                }
            }

            let area = shortest * (end - start + 1)
            let leftArea = calculateArea(heights, start, shortestIndex - 1)
            let rightArea = calculateArea(heights, shortestIndex + 1, end)

            return max(area, leftArea, rightArea)
        }
    }
}
