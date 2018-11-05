//
// Created by Xi, Paul on 11/4/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MinStackSpec: QuickSpec {
    override func spec() {
        describe("Min Stack") {
            it("Min Stack should work") {
                let minStack = MinStack()
                minStack.push(-2)
                minStack.push(0)
                minStack.push(-3)
                expect(minStack.getMin()).to(equal(-3))
                minStack.pop()
                expect(minStack.top()).to(equal(0))
                expect(minStack.getMin()).to(equal(-2))
            }
        }
    }
}
