//
// Created by Xi, Paul on 11/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LongestCommonPrefixSolutionSpec: QuickSpec {
    override func spec() {
        describe("Longest Common Prefix") {
            it("['flower','flow','flight'] should return 'fl'") {
                let solution = LongestCommonPrefixSolution()
                expect(solution.longestCommonPrefix(["flower","flow","flight"])).to(equal("fl"))
            }

            it("['dog','racecar','car'] should return ''") {
                let solution = LongestCommonPrefixSolution()
                expect(solution.longestCommonPrefix(["dog","racecar","car"])).to(equal(""))
            }
        }
    }
}
