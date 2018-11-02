//
// Created by Xi, Paul on 10/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LinkedListCycleSolution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil && head!.next != nil else {
            return false
        }

        var slow = head
        var fast = head?.next
        while slow! !== fast! {
            guard fast != nil && fast!.next != nil && fast!.next!.next != nil else {
                return false
            }

            slow = slow!.next
            fast = fast!.next!.next
        }

        return true
    }
}
