//
// Created by Xi, Paul on 3/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class AddTwoNumbersSolution {
    func addTwoNumbers(_ ln1: ListNode?, _ ln2: ListNode?) -> ListNode? {
        guard let l1 = ln1 else {
            return ln2
        }

        guard let l2 = ln2 else {
            return l1
        }

        let l3 = add(l1, l2.val)
        l3.next = addTwoNumbers(l3.next, l2.next)
        return l3
    }

    private func add(_ node: ListNode?, _ value: Int) -> ListNode {
        guard let node = node else {
            return ListNode(value)
        }

        let sum = node.val + value
        let result = ListNode(sum % 10)
        if sum < 10 {
            result.next = node.next
        } else {
            result.next = add(node.next, 1)
        }

        return result
    }
}
