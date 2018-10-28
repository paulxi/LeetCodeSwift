//
// Created by Xi, Paul on 10/27/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class KEmptySlotsSolutionSpec: QuickSpec {
    override func spec() {
        describe("K Empty Slots") {
            it("flowers: [1,3,2] k: 1 should return 2") {
                let solution = KEmptySlotsSolution()
                expect(solution.kEmptySlots([1,3,2], 1)).to(equal(2))
            }

            it("flowers: [1,2,3] k: 1 should return -1") {
                let solution = KEmptySlotsSolution()
                expect(solution.kEmptySlots([1,2,3], 1)).to(equal(-1))
            }

            it("flowers: [6, 5, 8, 9, 7, 1, 10, 2, 3, 4] k: 2 should return 8") {
                let solution = KEmptySlotsSolution()
                expect(solution.kEmptySlots([6, 5, 8, 9, 7, 1, 10, 2, 3, 4], 2)).to(equal(8))
            }
        }
    }
}
