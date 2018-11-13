//
// Created by Xi, Paul on 11/12/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class NestedInteger {
    var integer: Int?
    var list: [NestedInteger]?

    public init(integer: Int) {
        self.integer = integer
    }

    public init(_ list: NestedInteger...) {
        self.list = list
    }

    public func isInteger() -> Bool {
        return integer != nil
    }

    public func getInteger() -> Int {
        return integer!
    }

    public func setInteger(value: Int) {
        integer = value
    }

    public func add(elem: NestedInteger) {
        if list == nil {
            list = [elem]
        } else {
            list!.append(elem)
        }
    }

    public func getList() -> [NestedInteger] {
        return list!
    }
}
