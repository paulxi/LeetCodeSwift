//
// Created by Xi, Paul on 3/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MedianOfTwoSortedArraysSolution {
    func findMedianSortedArrays(_ arr1: [Int], _ arr2: [Int]) -> Double {
        let nums1 = arr1.count > arr2.count ? arr2 : arr1
        let nums2 = arr1.count > arr2.count ? arr1 : arr2
        let nums1Count = nums1.count
        let nums2Count = nums2.count

        var imin = 0
        var imax = nums1Count
        let halfLen = (nums1Count + nums2Count + 1) / 2

        while imin <= imax {
            let nums1RightIndex = (imin + imax) / 2
            let nums2RightIndex = halfLen - nums1RightIndex

            if nums1RightIndex < imax && nums2[nums2RightIndex - 1] > nums1[nums1RightIndex] {
                imin = nums1RightIndex + 1
            } else if nums1RightIndex > imin && nums1[nums1RightIndex - 1] > nums2[nums2RightIndex] {
                imax = nums1RightIndex - 1
            } else {
                var maxLeft = 0
                if nums1RightIndex == 0 {
                    if nums2RightIndex > 0 {
                        maxLeft = nums2[nums2RightIndex - 1]
                    }
                } else if nums2RightIndex == 0 {
                    maxLeft = nums1[nums1RightIndex - 1]
                } else {
                    maxLeft = max(nums1[nums1RightIndex - 1], nums2[nums2RightIndex - 1])
                }

                var minRight = 0
                if nums1RightIndex == nums1Count {
                    if nums2RightIndex < nums2Count {
                        minRight = nums2[nums2RightIndex]
                    }
                } else if nums2RightIndex == nums2Count {
                    minRight = nums1[nums1RightIndex]
                } else {
                    minRight = min(nums1[nums1RightIndex], nums2[nums2RightIndex])
                }

                if (nums1Count + nums2Count) % 2 == 1 {
                    return Double(maxLeft)
                }
                return Double(maxLeft + minRight) / 2.0
            }
        }

        return 0.0
    }
}
