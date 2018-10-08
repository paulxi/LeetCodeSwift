//
// Created by Xi, Paul on 10/7/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class JewelsAndStonesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Linked List Cycle") {
            it("J = 'aA', S = 'aAAbbbb' should return 3") {
                let solution = JewelsAndStonesSolution()
                expect(solution.numJewelsInStones("aA", "aAAbbbb")).to(equal(3))
            }

            it("J = 'z', S = 'ZZ' should return 0") {
                let solution = JewelsAndStonesSolution()
                expect(solution.numJewelsInStones("z", "ZZ")).to(equal(0))
            }
        }
    }
}
