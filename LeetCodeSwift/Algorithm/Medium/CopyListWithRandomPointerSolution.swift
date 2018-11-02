//
// Created by Xi, Paul on 9/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class CopyListWithRandomPointerSolution {
    func copyRandomList(head: RandomListNode?) -> RandomListNode? {
        guard let head = head else {
            return nil
        }

        var ptr: RandomListNode? = head
        while ptr != nil {
            let newNode = RandomListNode(ptr!.label)
            newNode.next = ptr!.next
            ptr!.next = newNode
            ptr = newNode.next
        }

        ptr = head
        while ptr != nil {
            ptr!.next!.random = (ptr!.random != nil) ? ptr!.random!.next : nil
            ptr = ptr!.next!.next
        }

        var ptrOldList: RandomListNode? = head
        var ptrNewList: RandomListNode? = head.next
        let headNew: RandomListNode? = head.next
        while ptrOldList != nil {
            ptrOldList!.next = ptrOldList!.next!.next
            ptrNewList!.next = ptrNewList!.next != nil ? ptrNewList!.next!.next : nil
            ptrOldList = ptrOldList!.next
            ptrNewList = ptrNewList!.next
        }

        return headNew
    }
}
