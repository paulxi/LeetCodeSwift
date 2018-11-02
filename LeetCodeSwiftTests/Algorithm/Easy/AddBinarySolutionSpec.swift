//
// Created by Xi, Paul on 11/2/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class AddBinarySolutionSpec: QuickSpec {
    override func spec() {
        describe("Add Binary") {
            it("a = '11', b = '1' should return '100'") {
                let solution = AddBinarySolution()
                expect(solution.addBinary("11", "1")).to(equal("100"))
            }

            it("a = '1010', b = '1011' should return '10101'") {
                let solution = AddBinarySolution()
                expect(solution.addBinary("1010", "1011")).to(equal("10101"))
            }
        }
    }
}
