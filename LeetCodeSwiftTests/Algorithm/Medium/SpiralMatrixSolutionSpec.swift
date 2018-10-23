//
// Created by Xi, Paul on 10/22/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SpiralMatrixSolutionSpec: QuickSpec {
    override func spec() {
        describe("Spiral Matrix") {
            it("[[ 1, 2, 3 ],[ 4, 5, 6 ],[ 7, 8, 9 ]] should return [1,2,3,6,9,8,7,4,5]") {
                let solution = SpiralMatrixSolution()
                expect(solution.spiralOrder([[ 1, 2, 3 ],[ 4, 5, 6 ],[ 7, 8, 9 ]])).to(equal([1,2,3,6,9,8,7,4,5]))
            }

            it("[[1, 2, 3, 4],[5, 6, 7, 8],[9,10,11,12]] should return [1,2,3,4,8,12,11,10,9,5,6,7]") {
                let solution = SpiralMatrixSolution()
                expect(solution.spiralOrder([[1, 2, 3, 4],[5, 6, 7, 8],[9,10,11,12]])).to(equal([1,2,3,4,8,12,11,10,9,5,6,7]))
            }
        }
    }
}
