//
// Created by Xi, Paul on 4/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ZigZagConversionSolutionSpec: QuickSpec {

    override func spec() {
        describe("ZigZag Conversion") {
            it("empty string should return empty string") {
                let solution = ZigZagConversionSolution()
                expect(solution.convert("", 3)).to(equal(""))
            }

            it("'PAYPALISHIRING' should return 'PAHNAPLSIIGYIR'") {
                let solution = ZigZagConversionSolution()
                expect(solution.convert("PAYPALISHIRING", 3)).to(equal("PAHNAPLSIIGYIR"))
            }
        }
    }

}
