//
// Created by Xi, Paul on 11/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ReverseNodesInKGroupSolution {
    func reverseKGroup(_ head: ListNode?, _ kValue: Int) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }

        var ans: ListNode?
        var curr = head
        var ansCurr: ListNode?

        while curr != nil {
            var ptr = curr

            var count = 0
            while count < kValue && curr != nil {
                curr = curr!.next
                count += 1
            }

            if count == kValue {
                var prev: ListNode?
                while count > 0 {
                    let temp = ptr!.next
                    ptr!.next = prev
                    prev = ptr
                    ptr = temp

                    count -= 1
                }

                if ans == nil {
                    ans = prev
                    ansCurr = ans
                } else {
                    ansCurr!.next = prev
                }
            } else {
                if ans == nil {
                    ans = ptr
                    ansCurr = ans
                } else {
                    ansCurr!.next = ptr
                }
            }

            while ansCurr!.next != nil {
                ansCurr = ansCurr!.next
            }
        }

        return ans
    }
}
