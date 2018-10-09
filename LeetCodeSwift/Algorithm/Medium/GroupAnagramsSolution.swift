//
// Created by Xi, Paul on 10/8/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class GroupAnagramsSolution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map: [String: [String]] = [:]
        for str in strs {
            let chars = str.sorted()
            let key = String(chars)
            if var list = map[key] {
                list.append(str)
                map[key] = list
            } else {
                map[key] = [str]
            }
        }
        return Array(map.values)
    }
}
