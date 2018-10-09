//
// Created by Xi, Paul on 10/8/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class GroupAnagramsSolutionSpec: QuickSpec {
    override func spec() {
        describe("Group Anagrams") {
            it("['eat', 'tea', 'tan', 'ate', 'nat', 'bat'] should return [['ate','eat','tea'], ['nat','tan'], ['bat']]") {
                let solution = GroupAnagramsSolution()
                expect(Set(solution.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))).to(equal(Set([
                    ["eat","tea","ate"],
                    ["tan","nat"],
                    ["bat"]
                ])))
            }
        }
    }
}
