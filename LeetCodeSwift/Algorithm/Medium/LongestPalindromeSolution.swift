//
// Created by Xi, Paul on 4/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LongestPalindromeSolution {
    func longestPalindrome(_ str: String) -> String {
        var result = ""

        //To increase performance, convert str to an character array first
        var chars: [Character] = [Character](repeating: Character("\u{0000}"), count: str.count)
        var iterator = str.makeIterator()
        var currentIndex = 0
        while let char = iterator.next() {
            chars[currentIndex] = char
            currentIndex += 1
        }

        for index in 0 ..< str.count {
            let palindrome1 = findPalindrome(chars, leftStartIndex: index, rightStartIndex: index)
            let palindrome2 = findPalindrome(chars, leftStartIndex: index, rightStartIndex: index + 1)

            if (palindrome1.count > result.count) {
                result = palindrome1
            }

            if (palindrome2.count > result.count) {
                result = palindrome2
            }
        }

        return result
    }

    private func findPalindrome(_ chars: [Character], leftStartIndex: Int, rightStartIndex: Int) -> String {
        let strLength = chars.count
        var left = leftStartIndex
        var right = rightStartIndex
        var result = ""

        while (left >= 0 && right < strLength) {
            let leftChar = chars[left]
            let rightChar = chars[right]

            if (leftChar == rightChar) {
                result.insert(leftChar, at: result.startIndex)

                if (left != right) {
                    result.insert(rightChar, at: result.endIndex)
                }

                left += -1
                right += 1
            } else {
                break
            }
        }

        return result
    }
}
