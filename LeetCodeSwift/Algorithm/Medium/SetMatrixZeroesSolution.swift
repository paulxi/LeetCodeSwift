//
// Created by Xi, Paul on 10/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SetMatrixZeroesSolution {
    enum Flag {
        case none
        case rowOnly
        case columnOnly
        case both
    }

    func setZeroes(_ matrix: inout [[Int]]) {
        guard matrix.count > 0 else {
            return
        }

        let row = matrix.count
        let column = matrix[0].count

        var flag: Flag = .none

        if matrix[0][0] == 0 {
            flag = .both
        } else {
            for idx in 1 ..< row  where matrix[idx][0] == 0 {
                flag = .columnOnly
            }

            for idx in 1 ..< column where matrix[0][idx] == 0 {
                if flag == .columnOnly {
                    flag = .both
                } else {
                    flag = .rowOnly
                }
                break
            }
        }

        for rowIdx in 1 ..< row {
            for colIdx in 1 ..< column where matrix[rowIdx][colIdx] == 0 {
                matrix[rowIdx][0] = 0
                matrix[0][colIdx] = 0
            }
        }

        for rowIdx in 1 ..< row {
            for colIdx in 1 ..< column {
                if matrix[rowIdx][0] == 0 || matrix[0][colIdx] == 0 {
                    matrix[rowIdx][colIdx] = 0
                }
            }
        }

        for rowInx in 0 ..< row {
            if flag == .both || flag == .columnOnly {
                matrix[rowInx][0] = 0
            }
        }

        for colInx in 0 ..< column {
            if flag == .both || flag == .rowOnly {
                matrix[0][colInx] = 0
            }
        }
    }
}
