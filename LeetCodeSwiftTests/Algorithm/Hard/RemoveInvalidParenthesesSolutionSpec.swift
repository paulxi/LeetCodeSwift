//
// Created by Xi, Paul on 10/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class RemoveInvalidParenthesesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Remove Invalid Parentheses") {
            it("'()())()' should return ['()()()', '(())()']") {
                let solution = RemoveInvalidParenthesesSolution()
                expect(Set(solution.removeInvalidParentheses("()())()"))).to(equal(Set(["()()()", "(())()"])))
            }

            it("'(a)())()' should return ['(a)()()', '(a())()']") {
                let solution = RemoveInvalidParenthesesSolution()
                expect(Set(solution.removeInvalidParentheses("(a)())()"))).to(equal(Set(["(a)()()", "(a())()"])))
            }

            it("')(' should return ['']") {
                let solution = RemoveInvalidParenthesesSolution()
                expect(Set(solution.removeInvalidParentheses(")("))).to(equal(Set([""])))
            }
        }
    }
}
