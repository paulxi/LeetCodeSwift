//
// Created by Xi, Paul on 9/25/18.
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

class MergeIntervalsSolution {
    func merge(_ intervals: [Interval]) -> [Interval] {
        let sortedIntervals = intervals.sorted { interval1, interval2 in
            interval1.start < interval2.start
        }

        return sortedIntervals.reduce([]) { (result: [Interval], interval: Interval) -> [Interval] in
            if (result.count == 0) {
                return [interval]
            } else {
                let last = result[result.count - 1]
                if interval.start <= last.end {
                    last.end = max(interval.end, last.end)
                    return result
                } else {
                    var copy = result
                    copy.append(interval)
                    return copy
                }
            }
        }
    }
}
