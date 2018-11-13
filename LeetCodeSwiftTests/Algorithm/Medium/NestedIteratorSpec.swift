//
// Created by Xi, Paul on 11/12/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//
import Quick
import Nimble
@testable import LeetCodeSwift

class NestedIteratorSpec: QuickSpec {
    override func spec() {
        describe("Flatten Nested List Iterator") {
            it("[[1,1],2,[1,1]] should return [1,1,2,1,1]") {
                var input: [NestedInteger] = []
                input.append(NestedInteger(NestedInteger(integer: 1), NestedInteger(integer: 1)))
                input.append(NestedInteger(integer: 2))
                input.append(NestedInteger(NestedInteger(integer: 1), NestedInteger(integer: 1)))
                let iterator = NestedIterator(input)

                var output: [Int] = []
                while iterator.hasNext() {
                    output.append(iterator.next())
                }
                expect(output).to(equal([1, 1, 2, 1, 1]))
            }

            it("[1,[4,[6]]] should return [1,4,6]") {
                var input: [NestedInteger] = []
                input.append(NestedInteger(integer: 1))
                input.append(NestedInteger(NestedInteger(integer: 4), NestedInteger(NestedInteger(integer: 6))))
                let iterator = NestedIterator(input)

                var output: [Int] = []
                while iterator.hasNext() {
                    output.append(iterator.next())
                }
                expect(output).to(equal([1, 4, 6]))
            }
        }
    }
}
