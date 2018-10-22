//
// Created by Xi, Paul on 10/21/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class GenerateParenthesesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Generate Parentheses") {
            it("n = 3 should return ['((()))', '(()())', '(())()', '()(())', '()()()']") {
                let solution = GenerateParenthesesSolution()
                expect(Set(solution.generateParenthesis(3)))
                        .to(equal(Set([
                            "((()))",
                            "(()())",
                            "(())()",
                            "()(())",
                            "()()()"
                        ])))
            }
        }
    }
}
