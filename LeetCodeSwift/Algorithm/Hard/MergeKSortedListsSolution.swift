//
// Created by Xi, Paul on 9/27/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MergeKSortedListsSolution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        let queue = PriorityQueue(order: { (lhs: ListNode, rhs: ListNode) -> Bool in
            lhs.val < rhs.val
        })

        lists.filter { $0 != nil }.forEach { node in queue.push(node!) }

        var result: ListNode?
        var previous: ListNode?
        while !queue.isEmpty {
            let node = queue.pop()!

            if result != nil {
                previous!.next = node
            } else {
                result = node
            }

            if let next = node.next {
                queue.push(next)
            }

            previous = node
        }

        return result
    }
}
