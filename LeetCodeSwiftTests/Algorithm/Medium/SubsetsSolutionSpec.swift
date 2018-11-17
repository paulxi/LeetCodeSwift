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
            it("'42' should return 42") {
                let solution = SubsetsSolution()
                expect(solution.subsets([1, 2, 3]).count).to(equal(8))
            }
        }
    }
}
