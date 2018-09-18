//
// Created by Xi, Paul on 9/17/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ReverseIntegerSolutionSpec: QuickSpec {
    override func spec() {
        describe("Reverse Integer") {
            it("123 should return 321") {
                let solution = ReverseIntegerSolution()
                expect(solution.reverse(123)).to(equal(321))
            }

            it("-123 should return -321") {
                let solution = ReverseIntegerSolution()
                expect(solution.reverse(-123)).to(equal(-321))
            }

            it("120 should return 21") {
                let solution = ReverseIntegerSolution()
                expect(solution.reverse(120)).to(equal(21))
            }

            it("1534236469 should return 0") {
                let solution = ReverseIntegerSolution()
                expect(solution.reverse(1534236469)).to(equal(0))
            }
        }
    }
}
