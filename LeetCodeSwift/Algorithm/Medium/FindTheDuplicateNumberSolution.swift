//
// Created by Xi, Paul on 11/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class FindTheDuplicateNumberSolution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var fast = nums[0]
        var slow = nums[0]

        fast = nums[nums[fast]]
        slow = nums[slow]
        while fast != slow {
            fast = nums[nums[fast]]
            slow = nums[slow]
        }

        var ptr = nums[0]
        while ptr != slow {
            ptr = nums[ptr]
            slow = nums[slow]
        }

        return ptr
    }
}
