//
// Created by Xi, Paul on 10/14/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MostCommonWordSolution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let bannedSet = Set(banned)
        let words = paragraph.split {
            " !?',;.".contains($0)
        }.map {
            String($0).lowercased()
        }.filter {
            !bannedSet.contains($0)
        }

        var map: [String: Int] = [:]
        let maxResult = words.reduce(("", 0)) { (result: (String, Int), word: String) -> (String, Int) in
            map[word] = (map[word] ?? 0) + 1
            if let num = map[word], num > result.1 {
                return (word, num)
            } else {
                return result
            }
        }
        return maxResult.0
    }
}
