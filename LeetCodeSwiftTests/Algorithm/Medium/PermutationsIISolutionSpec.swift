//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class PermutationsIISolutionSpec: QuickSpec {
    override func spec() {
        describe("Permutations II") {
            it("[1,1,2] should return [[1,1,2],[1,2,1],[2,1,1]]") {
                let solution = PermutationsIISolution()
                expect(solution.permuteUnique([1, 1, 2]).count).to(equal(3))
            }
        }
    }
}
