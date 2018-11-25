//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class TheSkylineProblemSolution {
    class Point {
        var pos: Int
        var height: Int
        var isStart: Bool

        init(_ pos: Int, _ height: Int, _ isStart: Bool) {
            self.pos = pos
            self.height = height
            self.isStart = isStart
        }
    }

    func getSkyline(_ buildings: [[Int]]) -> [[Int]] {
        guard buildings.count > 0 && buildings[0].count > 0 else {
            return []
        }

        var positions = Array(repeating: Point(0, 0, false), count: buildings.count * 2)
        for idx in 0 ..< buildings.count {
            let start = Point(buildings[idx][0], buildings[idx][2], true)
            positions[idx * 2] = start

            let end = Point(buildings[idx][1], buildings[idx][2], false)
            positions[idx * 2 + 1] = end
        }

        positions.sort { pt1, pt2 in
            if pt1.pos != pt2.pos {
                return pt1.pos < pt2.pos
            }

            if pt1.isStart && pt2.isStart {
                return pt1.height > pt2.height
            }

            if !pt1.isStart && !pt2.isStart {
                return pt1.height < pt2.height
            }

            return pt1.isStart
         }

        let queue = PriorityQueue<Int>(order: >)
        queue.push(0)

        var result: [[Int]] = []
        var preMaxVal = 0
        for point in positions {
            if point.isStart {
                queue.push(point.height)
                let curMaxVal = queue.peek()!
                if curMaxVal > preMaxVal {
                    result.append([point.pos, point.height])
                    preMaxVal = curMaxVal
                }
            } else {
                queue.remove(point.height)
                let curMaxVal = queue.peek()!
                if curMaxVal < preMaxVal {
                    result.append([point.pos, curMaxVal])
                    preMaxVal = curMaxVal
                }
            }
        }

        return result
    }
}
