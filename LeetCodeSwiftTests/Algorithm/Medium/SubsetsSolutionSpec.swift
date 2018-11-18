//
// Created by Xi, Paul on 11/16/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SubsetsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Subsets") {
            it("[1,2,3] should return [[3],[1],[2],[1,2,3],[1,3],[2,3],[1,2],[]]") {
                let solution = SubsetsSolution()
                expect(solution.subsets([1, 2, 3]).count).to(equal(8))
            }
        }
    }
}
