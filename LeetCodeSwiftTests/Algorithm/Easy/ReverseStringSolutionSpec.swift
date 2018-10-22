//
// Created by Xi, Paul on 10/22/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class ReverseStringSolutionSpec: QuickSpec {
    override func spec() {
        describe("Reverse String") {
            it("'hello' should return 'olleh'") {
                let solution = ReverseStringSolution()
                expect(solution.reverseString("hello")).to(equal("olleh"))
            }

            it("'A man, a plan, a canal: Panama' should return 'amanaP :lanac a ,nalp a ,nam A'") {
                let solution = ReverseStringSolution()
                expect(solution.reverseString("A man, a plan, a canal: Panama")).to(equal("amanaP :lanac a ,nalp a ,nam A"))
            }
        }
    }
}
