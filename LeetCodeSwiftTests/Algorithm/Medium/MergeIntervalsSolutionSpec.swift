//
// Created by Xi, Paul on 9/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MergeIntervalsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Merge Intervals") {
            it("test case 1 should work") {
                let solution = MergeIntervalsSolution()
                expect(solution.merge([Interval(1, 3), Interval(2, 6), Interval(8, 10), Interval(15, 18)]))
                        .to(equal([Interval(1, 6), Interval(8, 10), Interval(15, 18)]))
            }

            it("test case 2 should work") {
                let solution = MergeIntervalsSolution()
                expect(solution.merge([Interval(1, 4), Interval(4, 5)]))
                        .to(equal([Interval(1, 5)]))
            }

            it("test case 3 should work") {
                let solution = MergeIntervalsSolution()
                expect(solution.merge([Interval(1, 4), Interval(2, 3)]))
                        .to(equal([Interval(1, 4)]))
            }
        }
    }
}
