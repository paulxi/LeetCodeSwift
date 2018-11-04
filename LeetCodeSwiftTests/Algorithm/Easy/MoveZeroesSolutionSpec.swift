//
// Created by Xi, Paul on 11/4/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MoveZeroesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Move Zeroes") {
            it("[0,1,0,3,12] should return [1,3,12,0,0]") {
                let solution = MoveZeroesSolution()
                var params = [0, 1, 0, 3, 12]
                let expected = [1, 3, 12, 0, 0]
                solution.moveZeroes(&params)
                expect(params).to(equal(expected))
            }
        }
    }
}
