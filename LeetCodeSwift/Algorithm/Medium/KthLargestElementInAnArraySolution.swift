//
// Created by Xi, Paul on 11/12/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class KthLargestElementInAnArraySolution {
    func findKthLargest(_ nums: [Int], _ kth: Int) -> Int {
        let heap: PriorityQueue<Int> = PriorityQueue {
            (num1, num2) -> Bool in
            num1 < num2
        }

        for num in nums {
            if heap.count < kth {
                heap.push(num)
            } else {
                if num > heap.peek()! {
                    heap.push(num)
                    heap.pop()
                }
            }
        }

        return heap.peek()!
    }
}
