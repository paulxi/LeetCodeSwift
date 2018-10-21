//
// Created by Xi, Paul on 10/20/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MeetingRoomsIISolutionSpec: QuickSpec {
    override func spec() {
        describe("Meeting Rooms II") {
            it("[[0, 30],[5, 10],[15, 20]] should return 2") {
                let solution = MeetingRoomsIISolution()
                expect(solution.minMeetingRooms([Interval(1, 30), Interval(5, 10), Interval(15, 20)]))
                        .to(equal(2))
            }

            it("[[7, 10],[2, 4]] should return 1") {
                let solution = MeetingRoomsIISolution()
                expect(solution.minMeetingRooms([Interval(7, 10), Interval(2, 4)]))
                        .to(equal(1))
            }
        }
    }
}
