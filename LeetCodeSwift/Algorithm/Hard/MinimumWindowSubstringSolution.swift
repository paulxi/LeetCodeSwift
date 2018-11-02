//
// Created by Xi, Paul on 11/1/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MinimumWindowSubstringSolution {
    func minWindow(_ str: String, _ template: String) -> String {
        guard str.count >= template.count && template.count > 0 else {
            return ""
        }

        var map: [Character: Int] = [:]
        for char in template {
            let count = map[char] ?? 0
            map[char] = count + 1
        }

        var found = false
        var left = str.startIndex
        var right = str.startIndex
        var ans = [left, right]
        let required = map.count
        var formed = 0
        var windowCounts: [Character: Int] = [:]

        while right != str.endIndex {
            let char = Character(String(str[right]))
            let count = (windowCounts[char] ?? 0) + 1
            windowCounts[char] = count

            if let value = map[char], value == count {
                formed += 1
            }

            while left <= right && formed == required {
                if !found || (str.distance(from: ans[0], to: ans[1]) > str.distance(from: left, to: right)) {
                    found = true
                    ans[0] = left
                    ans[1] = right
                }

                let leftChar = Character(String(str[left]))
                let leftCharCount = (windowCounts[leftChar] ?? 0) - 1
                windowCounts[leftChar] = leftCharCount
                if let value = map[leftChar], leftCharCount < value {
                    formed -= 1
                }

                left = str.index(after: left)
            }

            right = str.index(after: right)
        }

        return found ? String(str[ans[0] ... ans[1]]) : ""

    }
}