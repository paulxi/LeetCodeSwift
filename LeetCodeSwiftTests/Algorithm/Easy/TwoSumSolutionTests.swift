//
//  TwoSumSolutionTests.swift
//  LeetCodeSwiftTests
//
//  Created by Xi, Paul on 3/14/18.
//  Copyright © 2018 LeetCode. All rights reserved.
//

import XCTest
@testable import LeetCodeSwift

class TwoSumSolutionTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTwoSum() {
        let solution = TwoSumSolution()
        XCTAssertEqual([0, 1], solution.twoSum([0, 1], 1))
    }

}
