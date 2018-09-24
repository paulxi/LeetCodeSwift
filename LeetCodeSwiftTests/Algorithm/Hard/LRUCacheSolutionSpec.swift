//
// Created by Xi, Paul on 9/23/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LRUCacheSolutionSpec: QuickSpec {

    override func spec() {
        describe("LRU Cache") {
            it("should work") {
                let cache = LRUCacheSolution(capacity: 2)
                cache.put(1, 1)
                cache.put(2, 2)
                expect(cache.get(1)).to(equal(1))
                cache.put(3, 3)
                expect(cache.get(2)).to(equal(-1))
                cache.put(4, 4)
                expect(cache.get(1)).to(equal(-1))
                expect(cache.get(3)).to(equal(3))
                expect(cache.get(4)).to(equal(4))
            }
        }
    }
}
