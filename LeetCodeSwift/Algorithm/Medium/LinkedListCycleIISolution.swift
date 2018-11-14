//
// Created by Xi, Paul on 11/13/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LinkedListCycleIISolution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return nil
        }

        var fast = head
        var slow = head
        var intersect: ListNode?

        while fast != nil && fast!.next != nil {
            fast = fast!.next!.next
            slow = slow!.next

            if fast === slow {
                intersect = slow
                break
            }
        }

        if intersect == nil {
            return nil
        }

        var ptr = head
        while ptr !== intersect {
            ptr = ptr!.next
            intersect = intersect!.next
        }

        return ptr
    }
}
