//
// Created by Xi, Paul on 10/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class RemoveInvalidParenthesesSolution {
    func removeInvalidParentheses(_ str: String) -> [String] {
        var ans:[String] = []
        remove(str, &ans, 0, 0, ["(", ")"])
        return ans
    }

    private func remove(_ str: String, _ ans: inout [String], _ lastI: Int, _ lastJ: Int, _ par: [Character]) {
        var stack: Int = 0
        for idxI in lastI ..< str.count {
            let index = str.index(str.startIndex, offsetBy: idxI)
            if str[index] == par[0] {
                stack += 1
            }
            if str[index] == par[1] {
                stack -= 1
            }
            if stack >= 0 {
                continue
            }

            for idxJ in lastJ ... idxI {
                let index = str.index(str.startIndex, offsetBy: idxJ)
                if str[index] == par[1] && (idxJ == lastJ || str[str.index(before: index)] != par[1]) {
                    let newStr = String(str[str.startIndex ..< index]) + String(str[str.index(after: index) ..< str.endIndex])
                    remove(newStr, &ans, idxI, idxJ, par)
                }
            }

            return
        }

        let reversed = String(str.reversed())
        if par[0] == "(" {
            remove(reversed, &ans, 0, 0, [")", "("])
        } else {
            ans.append(reversed)
        }
    }
}
