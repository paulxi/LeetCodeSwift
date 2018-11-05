//
// Created by Xi, Paul on 11/4/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MinStack {
    var stack: [Int] = []
    var min: Int

    /** initialize your data structure here. */
    init() {
        self.min = 0
    }

    func push(_ value: Int) {
        if stack.count == 0 {
            stack = [0]
            min = value
        } else {
            stack.append(value - min)
            if value < min {
                min = value
            }
        }
    }

    func pop() {
        guard stack.count > 0 else {
            return
        }

        let pop = stack.removeLast()
        if pop < 0 {
            min -= pop
        }
    }

    func top() -> Int {
        let top = stack[stack.count - 1]
        if top > 0 {
            return min + top
        } else {
            return min
        }
    }

    func getMin() -> Int {
        return min
    }
}
