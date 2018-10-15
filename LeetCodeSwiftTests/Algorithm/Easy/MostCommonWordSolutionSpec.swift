//
// Created by Xi, Paul on 10/14/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class MostCommonWordSolutionSpec: QuickSpec {
    override func spec() {
        describe("Most Common Word") {
            it("'Bob hit a ball, the hit BALL flew far after it was hit.', ['hit'] should return 'ball") {
                let solution = MostCommonWordSolution()
                expect(solution.mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))
                        .to(equal("ball"))
            }
        }
    }
}
