//
// Created by Xi, Paul on 9/21/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class StringToIntegerSolution {
    func myAtoi(_ str: String) -> Int {
        let maxInt32 = Int(Int32.max)
        let minInt32 = Int(Int32.min)
        let posRemainder = maxInt32 % 10
        let negRemainder = minInt32 % 10
        let digits = ["0": 0, "1": 1, "2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9]

        var result = 0
        var negative = false
        var ptr = str.startIndex
        while ptr != str.endIndex && charAt(ptr, str) == " " {
            ptr = str.index(ptr, offsetBy: 1)
        }

        if ptr == str.endIndex {
            return result
        }

        if charAt(ptr, str) == "-" {
            negative = true
            ptr = str.index(ptr, offsetBy: 1)
        } else if charAt(ptr, str) == "+" {
            ptr = str.index(ptr, offsetBy: 1)
        }

        while ptr != str.endIndex {
            if let num = digits[charAt(ptr, str)] {
                let sub = negative ? -num : num
                if negative {
                    if result < minInt32 / 10 || (result == minInt32 / 10 && sub < negRemainder) {
                        result = minInt32
                        break
                    }
                } else {
                    if result > maxInt32 / 10 || (result == maxInt32 / 10 && sub > posRemainder ) {
                        result = maxInt32
                        break
                    }
                }
                result = result * 10 + sub
                ptr = str.index(ptr, offsetBy: 1)
            } else {
                break
            }
        }

        return result
    }

    private func charAt(_ index: String.Index, _ str: String) -> String {
        return String(str[index..<str.index(index, offsetBy: 1)])
    }
}
