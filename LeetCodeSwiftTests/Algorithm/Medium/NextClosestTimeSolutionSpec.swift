//
// Created by Xi, Paul on 10/1/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class NextClosestTimeSolutionSpec: QuickSpec {
    override func spec() {
        describe("Next Closest Time") {
            it("'19:34' should return '19:39'") {
                let solution = NextClosestTimeSolution()
                expect(solution.nextClosestTime("19:34")).to(equal("19:39"))
            }

            it("'23:59' should return '22:22'") {
                let solution = NextClosestTimeSolution()
                expect(solution.nextClosestTime("23:59")).to(equal("22:22"))
            }
        }
    }
}
