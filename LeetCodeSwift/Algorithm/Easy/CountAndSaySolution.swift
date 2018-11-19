//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class CountAndSaySolution {
    func countAndSay(_ num: Int) -> String {
        var result = "1"
        if num == 1 {
            return result
        }

        for idx in 2 ... num {
            var newResult = ""
            var currChar = String(result[result.startIndex])
            var count = 1
            var index = result.index(after: result.startIndex)
            while (index != result.endIndex) {
                if String(result[index]) == currChar {
                    count += 1
                } else {
                    newResult += String(count)
                    newResult += currChar
                    currChar = String(result[index])
                    count = 1
                }
                index = result.index(after: index)
            }

            newResult += String(count)
            newResult += currChar
            result = newResult
        }

        return result
    }
}
