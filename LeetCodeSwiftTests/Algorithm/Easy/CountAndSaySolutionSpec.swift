//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class CountAndSaySolutionSpec: QuickSpec {
    override func spec() {
        describe("Count and Say") {
            it("input: 1 should return '1'") {
                let solution = CountAndSaySolution()
                expect(solution.countAndSay(1)).to(equal("1"))
            }

            it("input: 4 should return '1211'") {
                let solution = CountAndSaySolution()
                expect(solution.countAndSay(4)).to(equal("1211"))
            }
        }
    }
}
