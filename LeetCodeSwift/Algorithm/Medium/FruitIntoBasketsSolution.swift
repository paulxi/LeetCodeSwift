//
// Created by Xi, Paul on 10/26/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class FruitIntoBasketsSolution {
    func totalFruit(_ tree: [Int]) -> Int {
        var ans = 0
        var ptr = 0;
        var count: [Int: Int] = [:]
        for idx in 0 ..< tree.count {
            let type = tree[idx]
            if let value = count[type] {
                count[type] = value + 1
            } else {
                count[type] = 1
            }

            while count.count >= 3 {
                let ptrType = tree[ptr]
                count[ptrType] = count[ptrType]! - 1
                if count[ptrType]! == 0 {
                    count.removeValue(forKey: ptrType)
                }
                ptr += 1
            }

            ans = max(ans, idx - ptr + 1)
        }

        return ans
    }
}
