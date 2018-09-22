//
// Created by Xi, Paul on 9/21/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class StringToIntegerSolutionSpec: QuickSpec {
    override func spec() {
        describe("String to Integer") {
            it("'42' should return 42") {
                let solution = StringToIntegerSolution()
                expect(solution.myAtoi("42")).to(equal(42))
            }

            it("'   -42' should return -42") {
                let solution = StringToIntegerSolution()
                expect(solution.myAtoi("42")).to(equal(42))
            }

            it("'4193 with words' should return 4193") {
                let solution = StringToIntegerSolution()
                expect(solution.myAtoi("4193 with words")).to(equal(4193))
            }

            it("'words and 987' should return 0") {
                let solution = StringToIntegerSolution()
                expect(solution.myAtoi("words and 987")).to(equal(0))
            }

            it("'-91283472332' should return -2147483648") {
                let solution = StringToIntegerSolution()
                expect(solution.myAtoi("-91283472332")).to(equal(-2147483648))
            }

            it("'-6147483648' should return -2147483648") {
                let solution = StringToIntegerSolution()
                expect(solution.myAtoi("-6147483648")).to(equal(-2147483648))
            }
        }
    }
}
