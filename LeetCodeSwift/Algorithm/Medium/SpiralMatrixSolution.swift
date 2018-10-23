//
// Created by Xi, Paul on 10/22/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SpiralMatrixSolution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var result: [Int] = []
        if matrix.count > 0 {
            fill(matrix, 0, matrix.count - 1, 0, matrix[0].count - 1, &result)
            return result
        }
        return result
    }

    private func fill(_ matrix: [[Int]], _ rowBegin: Int, _ rowEnd: Int, _ colBegin: Int, _ colEnd: Int,
                      _ result: inout [Int]) {
        if rowBegin <= rowEnd && colBegin <= colEnd {
            for col in colBegin ... colEnd {
                result.append(matrix[rowBegin][col])
            }

            if rowBegin < rowEnd {
                for row in rowBegin + 1 ... rowEnd {
                    result.append(matrix[row][colEnd])
                }
            }

            if rowEnd > rowBegin && colEnd > colBegin {
                for col in stride(from: colEnd - 1, through: colBegin, by: -1) {
                    result.append(matrix[rowEnd][col])
                }

                for row in stride(from: rowEnd - 1, through: rowBegin + 1, by: -1) {
                    result.append(matrix[row][colBegin])
                }
            }

            fill(matrix, rowBegin + 1, rowEnd - 1, colBegin + 1, colEnd - 1, &result)
        }
    }
}
