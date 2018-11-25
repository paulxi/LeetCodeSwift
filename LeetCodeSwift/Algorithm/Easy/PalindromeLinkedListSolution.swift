//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PalindromeLinkedListSolution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var fast = head
        var slow = head

        while fast != nil && fast!.next != nil {
            fast = fast!.next!.next
            slow = slow!.next
        }

        if fast != nil {
            slow = slow!.next
        }

        slow = reverse(slow)
        fast = head
        while slow != nil {
            if slow!.val == fast!.val {
                slow = slow!.next
                fast = fast!.next
            } else {
                return false
            }
        }

        return true
    }

    private func reverse(_ head: ListNode?) -> ListNode? {
        var curr = head
        var prev: ListNode? = nil
        while curr != nil {
            let next = curr!.next
            curr!.next = prev
            prev = curr
            curr = next
        }

        return prev
    }
}
