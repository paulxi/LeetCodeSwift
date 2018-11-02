//
// Created by Xi, Paul on 10/1/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class NextClosestTimeSolution {
    func nextClosestTime(_ time: String) -> String {
        var digits = time.filter { char -> Bool in char != ":" }
            .map { char -> Int in Int(String(char))! }

        let timeValue = convertToNumber(digits: digits)
        digits.sort()

        var firstDigits: [Int]?
        for idx0 in digits {
            for idx1 in digits where idx0 * 10 + idx1 <= 23 {
                for idx2 in digits {
                    for idx3 in digits where idx2 * 10 + idx3 <= 59 {
                        if convertToNumber(digits: [idx0, idx1, idx2, idx3]) > timeValue {
                            return "\(idx0)\(idx1):\(idx2)\(idx3)"
                        }
                        if firstDigits == nil {
                            firstDigits = [idx0, idx1, idx2, idx3]
                        }
                    }
                }
            }
        }

        return "\(firstDigits![0])\(firstDigits![1]):\(firstDigits![2])\(firstDigits![3])"
    }

    func convertToNumber(digits: [Int]) -> Int {
        return (digits[0] * 10 + digits[1]) * 60 + (digits[2] * 10 + digits[3])
    }
}
