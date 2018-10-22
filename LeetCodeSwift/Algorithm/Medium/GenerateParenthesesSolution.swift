//
// Created by Xi, Paul on 10/21/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class GenerateParenthesesSolution {
    func generateParenthesis(_ num: Int) -> [String] {
        if num == 0 {
            return []
        }
        if num == 1 {
            return ["()"]
        }
        let previous = generateParenthesis(num - 1)
        var result: Set<String> = Set()
        for item in previous {
            let startIndex = item.startIndex
            let endIndex = item.endIndex
            for idx in 0 ..< item.count {
                let index = item.index(startIndex, offsetBy: idx)
                let str = String(item[startIndex ..< index]) + "()" + String(item[index ..< endIndex])
                if !result.contains(str) {
                    result.insert(str)
                }
            }
        }

        return Array(result)
    }
}
