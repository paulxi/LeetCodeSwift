//
// Created by Xi, Paul on 9/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class CopyListWithRandomPointerSolutionSpec: QuickSpec {

    override func spec() {
        describe("Copy List with Random Pointer") {
            it("clone should work") {
                let l1: RandomListNode = RandomListNode(4)
                let l2: RandomListNode = RandomListNode(7)
                let l3: RandomListNode = RandomListNode(-2)
                l1.next = l2
                l2.next = l3
                l1.random = l3
                l2.random = l1

                let solution = CopyListWithRandomPointerSolution()
                let copyl1 = solution.copyRandomList(head: l1)
                let copyl2 = copyl1?.next
                let copyl3 = copyl2?.next

                expect(l1.label).to(equal(copyl1!.label))
                expect(l2.label).to(equal(copyl2!.label))
                expect(l3.label).to(equal(copyl3!.label))
                expect(copyl3 === copyl1?.random).to(equal(true))
                expect(copyl1 === copyl2?.random).to(equal(true))
            }
        }
    }
}
