//
// Created by Xi, Paul on 11/8/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class TaskSchedulerSolution {
    func leastInterval(_ tasks: [Character], _ num: Int) -> Int {
        var map = Array(repeating: 0, count: 26)
        for task in tasks {
            let ascii = task.unicodeScalars.reduce(0) { (result, scala) -> Int in
                result + Int(scala.value)
            }

            let value = ascii - Int(UInt8(ascii: "A"))
            map[value] += 1
        }

        map.sort()
        var result = 0
        while map[25] > 0 {
            var idx = 0
            while idx <= num {
                if map[25] == 0 {
                    break
                }
                if idx < 26 && map[25 - idx] > 0 {
                    map[25 - idx] -= 1
                }
                result += 1
                idx += 1
            }

            map.sort()
        }

        return result
    }
}
