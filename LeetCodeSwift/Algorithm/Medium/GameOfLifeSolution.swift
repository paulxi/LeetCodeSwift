//
// Created by Xi, Paul on 10/23/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class GameOfLifeSolution {
    func gameOfLife(_ board: inout [[Int]]) {
        guard board.count > 0 else {
            return
        }

        let rows = board.count
        let cols = board[0].count

        for xIdx in 0 ..< rows {
            for yIdx in 0 ..< cols {
                let lives = livesOfNeighbor(&board, rows, cols, xIdx, yIdx)
                if board[xIdx][yIdx] == 1 && lives >= 2 && lives <= 3 {
                    board[xIdx][yIdx] = 3
                }
                if board[xIdx][yIdx] == 0 && lives == 3 {
                    board[xIdx][yIdx] = 2
                }
            }
        }

        for xIdx in 0 ..< rows {
            for yIdx in 0 ..< cols {
                board[xIdx][yIdx] >>= 1
            }
        }
    }

    private func livesOfNeighbor(_ board: inout [[Int]], _ rows: Int, _ cols: Int, _ rowIdx: Int, _ colIdx: Int) -> Int {
        var lives = 0
        for xIdx in max(rowIdx - 1, 0) ... min(rowIdx + 1, rows - 1) {
            for yIdx in max(colIdx - 1, 0) ... min(colIdx + 1, cols - 1) {
                lives += board[xIdx][yIdx] & 1
            }
        }

        lives -= board[rowIdx][colIdx] & 1

        return lives
    }
}
