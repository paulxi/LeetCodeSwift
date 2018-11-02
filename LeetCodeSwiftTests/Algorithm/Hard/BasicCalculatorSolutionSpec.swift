//
// Created by Xi, Paul on 11/2/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class BasicCalculatorSolutionSpec: QuickSpec {
    override func spec() {
        describe("Basic Calculator") {
            it("'1 + 1' should return 2") {
                let solution = BasicCalculatorSolution()
                expect(solution.calculate("1 + 1")).to(equal(2))
            }

            it("' 2-1 + 2 ' should return 3") {
                let solution = BasicCalculatorSolution()
                expect(solution.calculate(" 2-1 + 2 ")).to(equal(3))
            }

            it("'(1+(4+5+2)-3)+(6+8)' should return 23") {
                let solution = BasicCalculatorSolution()
                expect(solution.calculate("(1+(4+5+2)-3)+(6+8)")).to(equal(23))
            }
        }
    }
}
