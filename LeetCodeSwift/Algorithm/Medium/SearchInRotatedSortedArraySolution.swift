//
// Created by Xi, Paul on 10/10/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SearchInRotatedSortedArraySolution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        return search(nums, 0, nums.count - 1, target)
    }

    private func search(_ nums: [Int], _ low: Int, _ high: Int, _ target: Int) -> Int {
        guard low <= high else {
            return -1
        }

        let mid = low + (high - low) / 2
        let isLeftSorted = isSorted(nums, low, mid)
        let isRightSorted = isSorted(nums, mid, high)

        if nums[mid] == target {
            return mid
        }

        if isLeftSorted && nums[low] <= target && target < nums[mid] {
            return search(nums, low, mid - 1, target)
        } else if isRightSorted && nums[mid] < target && target <= nums[high] {
            return search(nums, mid + 1, high, target)
        } else {
            if isLeftSorted {
                return search(nums, mid + 1, high, target)
            } else {
                return search(nums, low, mid - 1, target)
            }
        }
    }

    private func isSorted(_ nums: [Int], _ low: Int, _ high: Int) -> Bool {
        return nums[low] < nums[high] || low == high
    }
}
