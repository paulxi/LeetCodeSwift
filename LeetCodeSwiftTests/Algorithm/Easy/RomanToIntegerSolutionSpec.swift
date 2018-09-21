//
// Created by Xi, Paul on 9/20/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class RomanToIntegerSolutionSpec: QuickSpec {
    override func spec() {
        describe("Roman to Integer") {
            it("III should return 3") {
                let solution = RomanToIntegerSolution()
                expect(solution.romanToInt("III")).to(equal(3))
            }

            it("IV should return 4") {
                let solution = RomanToIntegerSolution()
                expect(solution.romanToInt("IV")).to(equal(4))
            }

            it("IX should return 9") {
                let solution = RomanToIntegerSolution()
                expect(solution.romanToInt("IX")).to(equal(9))
            }

            it("LVIII should return 58") {
                let solution = RomanToIntegerSolution()
                expect(solution.romanToInt("LVIII")).to(equal(58))
            }

            it("MCMXCIV should return 1994") {
                let solution = RomanToIntegerSolution()
                expect(solution.romanToInt("MCMXCIV")).to(equal(1994))
            }
        }
    }
}
