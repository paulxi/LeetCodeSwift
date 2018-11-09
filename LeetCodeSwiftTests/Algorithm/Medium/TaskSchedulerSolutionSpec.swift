//
// Created by Xi, Paul on 11/8/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Quick
import Nimble
@testable import LeetCodeSwift

class TaskSchedulerSolutionSpec: QuickSpec {
    override func spec() {
        describe("Task Scheduler") {
            it("tasks = ['A','A','A','B','B','B'], n = 2 should return 8") {
                let solution = TaskSchedulerSolution()
                expect(solution.leastInterval(["A","A","A","B","B","B"], 2)).to(equal(8))
            }
        }
    }
}
