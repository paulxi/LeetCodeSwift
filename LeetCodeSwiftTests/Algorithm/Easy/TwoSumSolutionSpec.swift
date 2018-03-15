//
//  TwoSumSolutionSpec.swift
//  LeetCodeSwiftTests
//
//  Created by Xi, Paul on 3/14/18.
//  Copyright © 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class TwoSumSolutionSpec: QuickSpec {

    override func spec() {
        describe("Two Sum") {
            it("should return 2 numbers") {
                let solution = TwoSumSolution()
                expect(solution.twoSum([2, 7, 11, 15], 9)).to(equal([0, 1]))
            }

            it("should return empty array when nums is an empty array") {
                let solution = TwoSumSolution()
                expect(solution.twoSum([], 9)).to(equal([]))
            }

            it("should return empty array when result could not be found") {
                let solution = TwoSumSolution()
                expect(solution.twoSum([2, 11, 15], 9)).to(equal([]))
            }
        }
    }

}
