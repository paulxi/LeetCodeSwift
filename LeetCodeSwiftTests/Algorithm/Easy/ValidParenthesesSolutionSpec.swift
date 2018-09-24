//
// Created by Xi, Paul on 9/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ValidParenthesesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Valid Parentheses") {
            it("() should return true") {
                let solution = ValidParenthesesSolution()
                expect(solution.isValid("()")).to(equal(true))
            }

            it("()[]{} should return true") {
                let solution = ValidParenthesesSolution()
                expect(solution.isValid("()[]{}")).to(equal(true))
            }

            it("(] should return true") {
                let solution = ValidParenthesesSolution()
                expect(solution.isValid("(]")).to(equal(false))
            }

            it("([)] should return true") {
                let solution = ValidParenthesesSolution()
                expect(solution.isValid("([)]")).to(equal(false))
            }

            it("{[]} should return true") {
                let solution = ValidParenthesesSolution()
                expect(solution.isValid("{[]}")).to(equal(true))
            }
        }
    }
}
