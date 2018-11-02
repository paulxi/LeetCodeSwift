//
// Created by Xi, Paul on 9/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class NumberOfIslandsSolution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var copy = grid
        var num = 0
        let rows = grid.count
        if rows == 0 {
            return 0
        }
        let cols = grid[0].count

        for row in 0 ..< rows {
            for col in 0 ..< cols where copy[row][col] == "1" {
                num += 1
                checkNeighbor(&copy, row, col)
            }
        }

        return num
    }

    private func checkNeighbor(_ grid: inout [[Character]], _ row: Int, _ col: Int) {
        if row < 0 || row >= grid.count || col < 0 || col >= grid[0].count || grid[row][col] == "0" {
            return
        }

        grid[row][col] = "0"

        checkNeighbor(&grid, row - 1, col)
        checkNeighbor(&grid, row + 1, col)
        checkNeighbor(&grid, row, col - 1)
        checkNeighbor(&grid, row, col + 1)
    }
}
