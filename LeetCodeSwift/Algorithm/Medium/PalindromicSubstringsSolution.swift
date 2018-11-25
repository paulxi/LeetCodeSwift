//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PalindromicSubstringsSolution {
    func countSubstrings(_ str: String) -> Int {
        var result = 0
        let len = str.count
        var dp: [[Bool]] = Array(repeating: Array(repeating: false, count: len), count: len)

        for idxi in stride(from: len - 1, through: 0, by: -1) {
            for idxj in idxi ..< len {
                if str[str.index(str.startIndex, offsetBy: idxi)] == str[str.index(str.startIndex, offsetBy: idxj)] {
                    if (idxj - idxi <= 2 || dp[idxi + 1][idxj - 1]) {
                        dp[idxi][idxj] = true
                    }
                }

                if dp[idxi][idxj] {
                    result += 1
                }
            }
        }
        return result
    }
}
