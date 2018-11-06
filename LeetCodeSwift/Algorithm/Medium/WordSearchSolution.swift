//
// Created by Xi, Paul on 11/5/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class WordSearchSolution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard board.count > 0 else {
            return false
        }

        let rows = board.count
        let columns = board[0].count

        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: columns), count: rows)

        for row in 0..<rows {
            for column in 0..<columns {
                if search(board, word, row, column, 0, &visited) {
                    return true
                }
            }
        }

        return false
    }

    func search(_ board: [[Character]], _ word: String, _ row: Int, _ column: Int, _ index: Int, _ visited: inout [[Bool]]) -> Bool {
        if index == word.count {
            return true
        }

        let rows = board.count
        let columns = board[0].count
        let char = word[word.index(word.startIndex, offsetBy: index)]

        if row < 0 || row == rows || column < 0 || column == columns || char != board[row][column] || visited[row][column] {
            return false
        }

        visited[row][column] = true

        if char == board[row][column] {
            return search(board, word, row - 1, column, index + 1, &visited)
                    || search(board, word, row + 1, column, index + 1, &visited)
                    || search(board, word, row, column - 1, index + 1, &visited)
                    || search(board, word, row, column + 1, index + 1, &visited)
        }

        visited[row][column] = false

        return false
    }
}
