//
// Created by Xi, Paul on 9/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MergeIntervalsSolution {
    func merge(_ intervals: [Interval]) -> [Interval] {
        let sortedIntervals = intervals.sorted { interval1, interval2 in
            interval1.start < interval2.start
        }

        return sortedIntervals.reduce([]) { (result: [Interval], interval: Interval) -> [Interval] in
            if result.count == 0 {
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
