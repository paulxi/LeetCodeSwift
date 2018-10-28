//
// Created by Xi, Paul on 10/27/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class KEmptySlotsSolution {
    func kEmptySlots(_ flowers: [Int], _ slots: Int) -> Int {
        var days:[Int] = Array(repeating: 0, count: flowers.count)
        for idx in 0 ..< days.count {
            days[flowers[idx] - 1] = idx + 1
        }

        var ans = Int.max
        var left = 0
        var right = left + slots + 1

        while (right < days.count) {
            var idx = left + 1
            while (idx < right) {
                if days[idx] < days[left] || days[idx] < days[right] {
                    break
                }
                idx += 1
            }

            if (idx == right) {
                ans = min(ans, max(days[left], days[right]));
            }
            left = idx
            right = left + slots + 1
        }

        if (ans < Int.max) {
            return ans
        } else {
            return -1
        }
    }
}
