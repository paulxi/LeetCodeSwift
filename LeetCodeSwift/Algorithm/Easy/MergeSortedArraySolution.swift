//
// Created by Xi, Paul on 10/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MergeSortedArraySolution {
    func merge(_ nums1: inout [Int], _ mLen: Int, _ nums2: [Int], _ nLen: Int) {
        var iIndex = mLen - 1
        var jIndex = nLen - 1
        var kIndex = mLen + nLen - 1
        while jIndex >= 0 {
            if iIndex < 0 || nums2[jIndex] > nums1[iIndex] {
                nums1[kIndex] = nums2[jIndex]
                jIndex -= 1
            } else {
                nums1[kIndex] = nums1[iIndex]
                iIndex -= 1
            }
            kIndex -= 1
        }
    }
}
