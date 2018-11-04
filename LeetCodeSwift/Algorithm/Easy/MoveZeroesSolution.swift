//
// Created by Xi, Paul on 11/4/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MoveZeroesSolution {
    func moveZeroes(_ nums: inout [Int]) {
        var currentPointer = 0

        for idx in 0..<nums.count {
            if nums[idx] != 0 {
                nums[currentPointer] = nums[idx]
                currentPointer += 1
            }
        }

        for idx in currentPointer..<nums.count {
            nums[idx] = 0
        }
    }
}
