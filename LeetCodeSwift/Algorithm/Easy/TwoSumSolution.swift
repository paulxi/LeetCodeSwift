//
//  TwoSumSolution.swift
//  LeetCodeSwift
//
//  Created by Xi, Paul on 3/14/18.
//  Copyright © 2018 LeetCode. All rights reserved.
//

import Foundation

class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (index, item) in nums.enumerated() {
            let value = target - item
            if let valueIndex = map[value] {
                return [valueIndex, index]
            }
            map[item] = index

        }
        return []
    }
}
