//
// Created by Xi, Paul on 9/22/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class WordBreakSolution {
    func wordBreak(_ str: String, _ wordDict: [String]) -> Bool {
        let wordSet = Set(wordDict)
        var dp: [Bool] = Array(repeating: false, count: str.count + 1)
        dp[0] = true

        for iIdx in 1 ... str.count {
            let index = str.index(str.startIndex, offsetBy: iIdx)
            for jIdx in 0 ..< iIdx {
                let sub = String(str[str.index(str.startIndex, offsetBy: jIdx) ..< index])
                if (dp[jIdx] && wordSet.contains(sub)) {
                    dp[iIdx] = true;
                    break;
                }
            }
        }

        return dp[str.count]
    }
}
