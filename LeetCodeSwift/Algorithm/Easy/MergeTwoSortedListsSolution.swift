//
// Created by Xi, Paul on 10/4/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MergeTwoSortedListsSolution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {
            return l2
        }

        guard let l2 = l2 else {
            return l1
        }

        var node1: ListNode? = l1
        var node2: ListNode? = l2
        let result = ListNode(0)
        var ptr = result

        while node1 != nil && node2 != nil {
            let value = min(node1!.val, node2!.val)
            ptr.next = ListNode(value)
            ptr = ptr.next!

            if node1!.val < node2!.val {
                node1 = node1?.next
            } else {
                node2 = node2?.next
            }
        }

        if let node1 = node1 {
            ptr.next = node1
        }
        if let node2 = node2 {
            ptr.next = node2
        }

        return result.next
    }
}
