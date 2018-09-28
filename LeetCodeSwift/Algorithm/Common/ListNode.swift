//
// Created by Xi, Paul on 3/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

public class ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val &&
                lhs.next == rhs.next
    }

    public var val: Int
    public var next: ListNode?

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
