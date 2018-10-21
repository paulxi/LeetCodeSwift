//
// Created by Xi, Paul on 10/20/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

public class Interval {
    public var start: Int
    public var end: Int

    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

extension Interval: Equatable {
    static public func ==(lhs: Interval, rhs: Interval) -> Bool {
        return lhs.start == rhs.start && lhs.end == rhs.end
    }
}
