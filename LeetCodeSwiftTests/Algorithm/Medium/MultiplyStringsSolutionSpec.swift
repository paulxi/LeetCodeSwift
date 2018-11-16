//
// Created by Xi, Paul on 11/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MultiplyStringsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Multiply Strings") {
            it("num1 = '2', num2 = '3' should return '6'") {
                let solution = MultiplyStringsSolution()
                expect(solution.multiply("2", "3")).to(equal("6"))
            }

            it("num1 = '123', num2 = '456' should return '56088'") {
                let solution = MultiplyStringsSolution()
                expect(solution.multiply("123", "456")).to(equal("56088"))
            }

            it("num1 = '123456789', num2 = '987654321' should return '121932631112635269'") {
                let solution = MultiplyStringsSolution()
                expect(solution.multiply("123456789", "987654321")).to(equal("121932631112635269"))
            }
        }
    }
}
