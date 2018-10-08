//
// Created by Xi, Paul on 10/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class JewelsAndStonesSolution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var set: Set<Character> = Set()
        jewels.forEach {
            set.insert($0)
        }

        return stones.filter {
            return set.contains($0)
        }.count
    }
}
