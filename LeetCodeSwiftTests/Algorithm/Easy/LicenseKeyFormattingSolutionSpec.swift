//
// Created by Xi, Paul on 10/16/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class LicenseKeyFormattingSolutionSpec: QuickSpec {
    override func spec() {
        describe("License Key Formatting") {
            it("S = '5F3Z-2e-9-w', K = 4 should return '5F3Z-2E9W'") {
                let solution = LicenseKeyFormattingSolution()
                expect(solution.licenseKeyFormatting("5F3Z-2e-9-w", 4)).to(equal("5F3Z-2E9W"))
            }

            it("S = '2-5g-3-J', K = 2 should return '2-5G-3J'") {
                let solution = LicenseKeyFormattingSolution()
                expect(solution.licenseKeyFormatting("2-5g-3-J", 2)).to(equal("2-5G-3J"))
            }

            it("S = '-5g-3-J', K = 2 should return '5G-3J'") {
                let solution = LicenseKeyFormattingSolution()
                expect(solution.licenseKeyFormatting("-5g-3-J", 2)).to(equal("5G-3J"))
            }
        }
    }
}
