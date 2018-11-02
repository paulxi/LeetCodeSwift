//
// Created by Xi, Paul on 10/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class NextPermutationSolution {
    func nextPermutation(_ nums: inout [Int]) {
        guard nums.count > 1 else {
            return
        }
        var iIndex = nums.count - 2
        while iIndex >= 0 && nums[iIndex] >= nums[iIndex + 1] {
            iIndex -= 1
        }

        if iIndex >= 0 {
            var jIndex = nums.count - 1
            while jIndex >= 0 && nums[iIndex] >= nums[jIndex] {
                jIndex -= 1
            }

            nums.swapAt(iIndex, jIndex)
        }

        iIndex += 1
        var kIndex = nums.count - 1
        while iIndex < kIndex {
            nums.swapAt(iIndex, kIndex)
            iIndex += 1
            kIndex -= 1
        }
    }
}
