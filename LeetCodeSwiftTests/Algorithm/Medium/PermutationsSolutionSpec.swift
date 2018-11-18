//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class PermutationsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Permutations") {
            it("[1,2,3] should return [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]") {
                let solution = PermutationsSolution()
                expect(solution.permute([1, 2, 3]).count).to(equal(6))
            }
        }
    }
}
