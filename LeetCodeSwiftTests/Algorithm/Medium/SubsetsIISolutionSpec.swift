//
// Created by Xi, Paul on 11/17/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class SubsetsIISolutionSpec: QuickSpec {
    override func spec() {
        describe("Subsets II") {
            it("[1,2,2] should return [[1],[2],[1,2,2],[1,2],[2,2],[]]") {
                let solution = SubsetsIISolution()
                expect(solution.subsetsWithDup([1, 2, 2]).count).to(equal(6))
            }
        }
    }
}
