//
// Created by Xi, Paul on 4/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ZigZagConversionSolution {
    func convert(_ str: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return str
        }

        var rows = [String](repeating: "", count: numRows)

        var index = 0
        var topToDown = true
        var iterator = str.makeIterator()
        while let char = iterator.next() {
            rows[index].append(char)

            if topToDown {
                index += 1
            } else {
                index -= 1
            }

            if index < 0 {
                index = 1
                topToDown = true
            }

            if index == numRows {
                index -= 2
                topToDown = false
            }
        }

        var result = ""
        for row in rows {
            result.append(row)
        }

        return result
    }
}
