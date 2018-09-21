//
// Created by Xi, Paul on 9/20/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class RomanToIntegerSolution {
    private static let RomanValue1: [String: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    private static let RomanValue2: [String: Int] = ["IV": 4, "IX": 9, "XL": 40, "XC": 90, "CD": 400, "CM": 900]

    func romanToInt(_ str: String) -> Int {
        return convert(0, str)
    }

    private func convert(_ sum: Int, _ str: String) -> Int {
        let length = str.count
        if (length == 0) {
            return sum
        } else if (length == 1) {
            return sum + (RomanToIntegerSolution.RomanValue1[str] ?? 0)
        } else {
            let index = str.index(str.startIndex, offsetBy: 2)
            let twoChars = String(str[..<index])
            let restStr = String(str[index...])
            if let value = RomanToIntegerSolution.RomanValue2[twoChars] {
                return convert(sum + value, restStr)
            } else {
                let firstCharIndex = str.index(str.startIndex, offsetBy: 1)
                let firstChar = String(str[..<firstCharIndex])
                return convert(sum + (RomanToIntegerSolution.RomanValue1[firstChar] ?? 0),
                        String(str[firstCharIndex...]))
            }
        }
    }
}
