//
// Created by Xi, Paul on 9/26/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class IntegerToEnglishWordsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Integer to English Words") {
            it("case 1") {
                let solution = IntegerToEnglishWordsSolution()
                expect(solution.numberToWords(123)).to(equal("One Hundred Twenty Three"))
            }

            it("case 2") {
                let solution = IntegerToEnglishWordsSolution()
                expect(solution.numberToWords(12345)).to(equal("Twelve Thousand Three Hundred Forty Five"))
            }

            it("case 3") {
                let solution = IntegerToEnglishWordsSolution()
                expect(solution.numberToWords(1234567)).to(equal("One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"))
            }

            it("case 4") {
                let solution = IntegerToEnglishWordsSolution()
                expect(solution.numberToWords(1234567891)).to(equal("One Billion Two Hundred Thirty Four Million Five Hundred Sixty Seven Thousand Eight Hundred Ninety One"))
            }
        }
    }
}
