//
// Created by Xi, Paul on 10/15/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class WordLadderSolution {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var remained = Set(wordList)
        var reached = Set<String>()
        reached.insert(beginWord)

        var distance = 1
        while !remained.isEmpty && !reached.isEmpty {
            if reached.contains(endWord) {
                return distance
            }

            remained = remained.subtracting(reached)

            distance += 1
            var children = Set<String>()
            for word in reached {
                for str in remained {
                    if !children.contains(str) && isOneLetterDiff(word, str) {
                        children.insert(str)
                    }
                }
            }

            reached = children
        }

        return 0
    }

    private func isOneLetterDiff(_ src: String, _ dist: String) -> Bool {
        var srcIndex = src.startIndex
        var distIndex = dist.startIndex

        while srcIndex != src.endIndex {
            if String(src[srcIndex ..< src.index(srcIndex, offsetBy: 1)]) !=
                       String(dist[distIndex ..< dist.index(distIndex, offsetBy: 1)]) {
                return src.substring(from: src.index(srcIndex, offsetBy: 1)) ==
                        dist.substring(from: dist.index(distIndex, offsetBy: 1))
            } else {
                srcIndex = src.index(srcIndex, offsetBy: 1)
                distIndex = dist.index(distIndex, offsetBy: 1)
            }
        }

        return false
    }
}
