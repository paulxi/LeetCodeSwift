//
// Created by Xi, Paul on 10/30/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LongestConsecutiveSequenceSolutionSpec: QuickSpec {
    override func spec() {
        describe("Longest Consecutive Sequence") {
            it("[100, 4, 200, 1, 3, 2] should return 4") {
                let solution = LongestConsecutiveSequenceSolution()
                expect(solution.longestConsecutive([100, 4, 200, 1, 3, 2])).to(equal(4))
            }
        }
    }
}
