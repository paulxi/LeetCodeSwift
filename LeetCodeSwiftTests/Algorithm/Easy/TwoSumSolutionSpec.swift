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
                expect(solution.twoSum([0, 1], 1)).to(equal([0, 1]))
            }
        }
    }
    
}
