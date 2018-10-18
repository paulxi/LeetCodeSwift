//
// Created by Xi, Paul on 10/17/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class PowXnSolutionSpec: QuickSpec {
    override func spec() {
        describe("Pow(x, n)") {
            it("2.00000, 10 should return 1024.00000") {
                let solution = PowXnSolution()
                expect(solution.myPow(2.0, 10)).to(equal(1024.0))
            }

            it("2.10000, 3 should return 9.2610000") {
                let solution = PowXnSolution()
                expect(solution.myPow(2.1, 3)).to(beCloseTo(9.261, within: 0.01))
            }

            it("2.00000, -2 should return 0.25000") {
                let solution = PowXnSolution()
                expect(solution.myPow(2.0, -2)).to(equal(0.25))
            }

            it("2.00000, -2147483648 should return 0.00") {
                let solution = PowXnSolution()
                expect(solution.myPow(2.0, -2147483648)).to(beCloseTo(0.0, within: 0.01))
            }
        }
    }
}
