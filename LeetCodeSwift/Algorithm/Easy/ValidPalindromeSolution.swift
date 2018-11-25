//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ValidPalindromeSolution {
    func isPalindrome(_ str: String) -> Bool {
        guard str.count > 0 else {
            return true
        }

        var start = str.startIndex
        var end = str.index(before: str.endIndex)

        let digits = Character("0") ... Character("9")
        let lowerCases = Character("a") ... Character("z")
        let upperCases = Character("A") ... Character("Z")

        while start < end {
            let startChar = str[start]
            if !(digits.contains(startChar) || lowerCases.contains(startChar) || upperCases.contains(startChar)) {
                start = str.index(after: start)
                continue
            }

            let endChar = str[end]
            if !(digits.contains(endChar) || lowerCases.contains(endChar) || upperCases.contains(endChar)) {
                end = str.index(before: end)
                continue
            }

            if startChar == endChar || String(startChar).lowercased() == String(endChar).lowercased() {
                start = str.index(after: start)
                end = str.index(before: end)
            } else {
                return false
            }
        }

        return true
    }
}
