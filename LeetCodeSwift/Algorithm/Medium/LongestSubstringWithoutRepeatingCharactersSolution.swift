//
// Created by Xi, Paul on 4/2/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LongestSubstringWithoutRepeatingCharactersSolution {
    // comment because it causes Time Limit Exceeded in leetcode when it handles very long string
//    func lengthOfLongestSubstring(_ str: String) -> Int {
//        let strLen = str.count
//        var maxLength = 0
//        var startIndex = 0
//        var currentIndex = 0
//        var map: [String: Int] = [:]
//
//        while maxLength + startIndex < strLen {
//            let range = str.index(str.startIndex, offsetBy: currentIndex) ..<
//                    str.index(str.startIndex, offsetBy: currentIndex + 1)
//            let char = str.substring(with: range)
//
//            let pos = map[char] ?? -1
//            startIndex = max(startIndex, pos + 1)
//            maxLength = max(maxLength, currentIndex - startIndex + 1)
//            map[char] = currentIndex
//            currentIndex += 1
//        }
//
//        return maxLength
//    }

    func lengthOfLongestSubstring(_ str: String) -> Int {
        var iterator = str.makeIterator()
        let strLen = str.count
        var maxLength = 0
        var startIndex = 0
        var currentIndex = 0
        var map: [Character: Int] = [:]

        while let char = iterator.next() {
            if ( maxLength + startIndex < strLen) {
                let pos = map[char] ?? -1
                startIndex = max(startIndex, pos + 1)
                maxLength = max(maxLength, currentIndex - startIndex + 1)
                map[char] = currentIndex
                currentIndex += 1
            } else {
                break
            }

        }

        return maxLength
    }
}
