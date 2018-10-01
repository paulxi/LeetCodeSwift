//
// Created by Xi, Paul on 9/30/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LetterCombinationsOfAPhoneNumberSolutionSpec: QuickSpec {
    override func spec() {
        describe("Letter Combinations of a Phone Number") {
            it("'23' should return ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf']") {
                let solution = LetterCombinationsOfAPhoneNumberSolution()
                expect(solution.letterCombinations("23")).to(equal(["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]))
            }
        }
    }
}