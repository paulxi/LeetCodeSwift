//
// Created by Xi, Paul on 3/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MedianOfTwoSortedArraysSolution {
    func findMedianSortedArrays(_ arr1: [Int], _ arr2: [Int]) -> Double {
        let nums1 = arr1.count > arr2.count ? arr2 : arr1
        let nums2 = arr1.count > arr2.count ? arr1 : arr2
        let m = nums1.count
        let n = nums2.count

        var imin = 0
        var imax = m
        let halfLen = (m + n + 1) / 2

        while imin <= imax {
            let i = (imin + imax) / 2
            let j = halfLen - i

            if i < imax && nums2[j - 1] > nums1[i] {
                imin = i + 1
            } else if i > imin && nums1[i - 1] > nums2[j] {
                imax = i - 1
            } else {
                var maxLeft = 0
                if i == 0 {
                    if j > 0 {
                        maxLeft = nums2[j - 1]
                    }
                } else if j == 0 {
                    maxLeft = nums1[i - 1]
                } else {
                    maxLeft = max(nums1[i - 1], nums2[j - 1])
                }

                var minRight = 0
                if i == m {
                    if j < n {
                        minRight = nums2[j]
                    }
                } else if j == n {
                    minRight = nums1[i]
                } else {
                    minRight = min(nums1[i], nums2[j])
                }

                if (m + n) % 2 == 1 {
                    return Double(maxLeft)
                }
                return Double(maxLeft + minRight) / 2.0
            }
        }

        return 0.0
    }
}
