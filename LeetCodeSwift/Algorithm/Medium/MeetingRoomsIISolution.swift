//
// Created by Xi, Paul on 10/20/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MeetingRoomsIISolution {
    func minMeetingRooms(_ intervals: [Interval]) -> Int {
        let start = intervals.map{$0.start}.sorted()
        let end = intervals.map{$0.end}.sorted()

        var startPtr = 0;
        var endPtr = 0;

        var usedRooms = 0;
        while (startPtr < intervals.count) {
            if start[startPtr] >= end[endPtr] {
                usedRooms -= 1
                endPtr += 1
            }
            usedRooms += 1
            startPtr += 1
        }

        return usedRooms
    }
}
