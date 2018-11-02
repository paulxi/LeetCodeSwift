//
// Created by Xi, Paul on 9/30/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LetterCombinationsOfAPhoneNumberSolution {
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else {
            return []
        }

        let letterValues: [Character: [String]] = ["2": ["a", "b", "c"],
                                                   "3": ["d", "e", "f"],
                                                   "4": ["g", "h", "i"],
                                                   "5": ["j", "k", "l"],
                                                   "6": ["m", "n", "o"],
                                                   "7": ["p", "q", "r", "s"],
                                                   "8": ["t", "u", "v"],
                                                   "9": ["w", "x", "y", "z"]]

        return digits.reduce([""]) {(list, char) in
             list.flatMap { str in
                 letterValues[char]!.map {letter in
                     str + letter
                }
            }
        }
    }
}
