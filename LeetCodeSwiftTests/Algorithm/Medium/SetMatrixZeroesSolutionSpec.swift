//
// Created by Xi, Paul on 10/25/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SetMatrixZeroesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Set Matrix Zeroes") {
            it("[[1,1,1],[1,0,1],[1,1,1]] should return [[1,0,1],[0,0,0],[1,0,1]]") {
                let solution = SetMatrixZeroesSolution()
                var params = [[1, 1, 1],
                              [1, 0, 1],
                              [1, 1, 1]]
                let expected = [[1, 0, 1],
                                [0, 0, 0],
                                [1, 0, 1]]
                solution.setZeroes(&params)
                expect(params).to(equal(expected))
            }

            it("[[0,1,2,0],[3,4,5,2],[1,3,1,5]] should return [[0,0,0,0],[0,4,5,0],[0,3,1,0]]") {
                let solution = SetMatrixZeroesSolution()
                var params = [[0, 1, 2, 0],
                              [3, 4, 5, 2],
                              [1, 3, 1, 5]]
                let expected = [[0, 0, 0, 0],
                                [0, 4, 5, 0],
                                [0, 3, 1, 0]]
                solution.setZeroes(&params)
                expect(params).to(equal(expected))
            }
        }
    }
}
