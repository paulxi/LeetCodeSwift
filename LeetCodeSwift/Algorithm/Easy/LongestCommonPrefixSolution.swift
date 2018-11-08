//
// Created by Xi, Paul on 11/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LongestCommonPrefixSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        if strs.count == 1 {
            return strs[0]
        }

        var ans = ""

        var ptr = 0
        var end = false

        while !end {
            var char: Character?

            for idx in 0 ..< strs.count {
                let str = strs[idx]

                if ptr == str.count {
                    end = true
                    break
                } else {
                    if idx == 0 {
                        char = str[str.index(str.startIndex, offsetBy: ptr)]
                    } else {
                        if char! != str[str.index(str.startIndex, offsetBy: ptr)] {
                            end = true
                            break
                        }

                        if idx == strs.count - 1 {
                            ans += String(char!)
                        }
                    }
                }
            }

            ptr += 1
        }

        return ans
    }
}
