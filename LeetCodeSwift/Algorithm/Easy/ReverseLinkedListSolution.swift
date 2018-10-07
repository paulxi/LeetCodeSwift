//
// Created by Xi, Paul on 10/6/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ReverseLinkedListSolution {
    func reverseList(_ head: ListNode?) -> ListNode? {
//        if head == nil || head!.next == nil {
//            return head
//        }
//        var result = reverseList(head!.next)
//        head!.next!.next = head
//        head!.next = nil
//        return result

        var curr = head
        var prev: ListNode? = nil
        while curr != nil {
            let temp = curr!.next
            curr!.next = prev
            prev = curr!
            curr = temp
        }

        return prev
    }
}
