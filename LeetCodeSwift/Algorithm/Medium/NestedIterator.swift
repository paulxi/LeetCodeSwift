//
// Created by Xi, Paul on 11/12/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class NestedIterator {
    var stack: [NestedInteger] = []

    init(_ nestedList: [NestedInteger]) {
        for idx in stride(from: nestedList.count - 1, through: 0, by: -1) {
            stack.insert(nestedList[idx], at: 0)
        }
    }

    func next() -> Int {
        let first = stack.remove(at: 0)
        return first.getInteger()
    }

    func hasNext() -> Bool {
        while !stack.isEmpty {
            let elem = stack[0]
            if elem.isInteger() {
                return true
            } else {
                stack.remove(at: 0)
                let nestedList = elem.getList()
                for idx in stride(from: nestedList.count - 1, through: 0, by: -1) {
                    stack.insert(nestedList[idx], at: 0)
                }
            }
        }

        return false
    }
}
