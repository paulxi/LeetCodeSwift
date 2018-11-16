//
// Created by Xi, Paul on 11/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MultiplyStringsSolution {
    func multiply(_ num1: String, _ num2: String) -> String {
        let length1 = num1.count
        let length2 = num2.count

        var pos:[Int] = Array(repeating: 0, count: length1 + length2)

        for idx1 in stride(from: num1.count - 1, through: 0, by: -1) {
            let digit1 = Int(String(num1[num1.index(num1.startIndex, offsetBy: idx1)]))!
            for idx2 in stride(from: num2.count - 1, through: 0, by: -1) {
                let digit2 = Int(String(num2[num2.index(num2.startIndex, offsetBy: idx2)]))!

                let mul = digit1 * digit2
                let sum = pos[idx1 + idx2 + 1] + mul
                pos[idx1 + idx2] += sum / 10
                pos[idx1 + idx2 + 1] = sum % 10
            }
        }

        var result = ""
        for idx in 0 ..< pos.count {
            if !(result.count == 0 && pos[idx] == 0) {
                result += String(pos[idx])
            }
        }

        return result.count == 0 ? "0" : result
    }
}
