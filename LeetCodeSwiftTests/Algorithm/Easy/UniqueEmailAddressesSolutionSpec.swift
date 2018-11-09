//
// Created by Xi, Paul on 11/8/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class UniqueEmailAddressesSolutionSpec: QuickSpec {
    override func spec() {
        describe("Unique Email Addresses") {
            it("should return 2 numbers") {
                let solution = UniqueEmailAddressesSolution()
                let emails = ["test.email+alex@leetcode.com",
                              "test.e.mail+bob.cathy@leetcode.com",
                              "testemail+david@lee.tcode.com"]
                expect(solution.numUniqueEmails(emails)).to(equal(2))
            }
        }
    }
}
