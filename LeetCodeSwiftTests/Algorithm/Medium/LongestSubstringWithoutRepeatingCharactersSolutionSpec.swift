//
// Created by Xi, Paul on 4/2/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LongestSubstringWithoutRepeatingCharactersSolutionSpec: QuickSpec {

    override func spec() {
        describe("Longest Substring without Repeating Characters") {
            it("empty string should return 0") {
                let solution = LongestSubstringWithoutRepeatingCharactersSolution()
                expect(solution.lengthOfLongestSubstring("")).to(equal(0))
            }

            it("'abcabcbb' should return 3") {
                let solution = LongestSubstringWithoutRepeatingCharactersSolution()
                expect(solution.lengthOfLongestSubstring("abcabcbb")).to(equal(3))
            }

            it("'bbbbb' should return 1") {
                let solution = LongestSubstringWithoutRepeatingCharactersSolution()
                expect(solution.lengthOfLongestSubstring("bbbbb")).to(equal(1))
            }

            it("'pwwkew' should return 3") {
                let solution = LongestSubstringWithoutRepeatingCharactersSolution()
                expect(solution.lengthOfLongestSubstring("pwwkew")).to(equal(3))
            }
        }
    }

}
