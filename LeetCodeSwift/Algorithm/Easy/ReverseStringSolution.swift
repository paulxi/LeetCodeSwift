//
// Created by Xi, Paul on 10/22/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ReverseStringSolution {
    func reverseString(_ str: String) -> String {
        var chars = str.map{$0}
        for idx in 0 ..< chars.count / 2 {
            let temp = chars[idx]
            let back = chars.count - 1 - idx
            chars[idx] = chars[back]
            chars[back] = temp
        }

        return String(chars)
    }
}
