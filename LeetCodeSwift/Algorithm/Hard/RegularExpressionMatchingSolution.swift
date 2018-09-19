//
// Created by Xi, Paul on 9/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class RegularExpressionMatchingSolution {
    func isMatch(_ source: String, _ pattern: String) -> Bool {
        var result: [[Bool]] = Array(repeating: Array(repeating: false, count: pattern.count + 1), count: source.count + 1)
        result[0][0] = true

        for idx in 0 ..< pattern.count {
            let index = pattern.index(pattern.startIndex, offsetBy: idx)
            if (pattern[index] == "*") {
                result[0][idx + 1] = result[0][idx - 1]
            }
        }

        for sIdx in 0 ..< source.count {
            let sChar = source[source.index(source.startIndex, offsetBy: sIdx)]
            for pIdx in 0 ..< pattern.count {
                let pChar = pattern[pattern.index(pattern.startIndex, offsetBy: pIdx)]

                if (sChar == pChar) {
                    result[sIdx + 1][pIdx + 1] = result[sIdx][pIdx]
                } else if (pChar == ".") {
                    result[sIdx + 1][pIdx + 1] = result[sIdx][pIdx]
                } else if (pChar == "*") {
                    let preChar = pattern[pattern.index(pattern.startIndex, offsetBy: pIdx - 1)]
                    if (preChar != sChar && preChar != ".") {
                        result[sIdx + 1][pIdx + 1] = result[sIdx + 1][pIdx - 1]
                    } else {
                        result[sIdx + 1][pIdx + 1] = result[sIdx + 1][pIdx - 1] || result[sIdx + 1][pIdx] || result[sIdx][pIdx + 1]
                    }
                }
            }
        }

        return result[source.count][pattern.count]
    }
}
