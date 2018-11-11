//
// Created by Xi, Paul on 11/10/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MaximalRectangleSolution {
    func maximalRectangle(_ matrix: [[Character]]) -> Int {
        if matrix.count == 0 {
            return 0
        }
        if matrix[0].count == 0 {
            return 0
        }

        var heights: [Int] = Array(repeating: 0, count: matrix[0].count)
        var result = 0
        for row in 0 ..< matrix.count {
            for col in 0 ..< matrix[row].count {
                if matrix[row][col] == "1" {
                    heights[col] += 1
                } else {
                    heights[col] = 0
                }
            }

            result = max(result, largestRectangleArea(heights))
        }

        return result
    }

    private func largestRectangleArea(_ heights: [Int]) -> Int {
        var lessFromLeft:[Int] = Array(repeating: 0, count: heights.count)
        var lessFromRight:[Int] = Array(repeating: 0, count: heights.count)
        lessFromLeft[0] = -1
        lessFromRight[heights.count - 1] = heights.count

        for idx in 1 ..< heights.count {
            var ptr = idx - 1
            while ptr >= 0 && heights[ptr] >= heights[idx] {
                ptr = lessFromLeft[ptr]
            }
            lessFromLeft[idx] = ptr
        }

        for idx in stride(from: heights.count - 2, through: 0, by: -1) {
            var ptr = idx + 1
            while ptr < heights.count && heights[ptr] >= heights[idx] {
                ptr = lessFromRight[ptr]
            }
            lessFromRight[idx] = ptr
        }

        var maxArea = 0
        for idx in 0 ..< heights.count {
            maxArea = max(maxArea, heights[idx] * (lessFromRight[idx] - lessFromLeft[idx] - 1))
        }
        return maxArea
    }
}
