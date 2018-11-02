//
// Created by Xi, Paul on 11/2/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class AddBinarySolution {
    func addBinary(_ astr: String, _ bstr: String) -> String {
        var result = ""
        var carrier = "0"
        var index = 0

        while (index < astr.count || index < bstr.count) {
            var achar = "0"
            var bchar = "0"

            if index < astr.count {
                let aIdx = astr.index(astr.startIndex, offsetBy: astr.count - index - 1)
                achar = String(astr[aIdx])
            }

            if index < bstr.count {
                let bIdx = bstr.index(bstr.startIndex, offsetBy: bstr.count - index - 1)
                bchar = String(bstr[bIdx])
            }

            if achar == bchar {
                result = carrier + result
                carrier = achar
            } else {
                if carrier == "1" {
                    result = "0" + result
                } else {
                    result = "1" + result
                }
            }

            index += 1
        }

        if carrier == "1" {
            result = "1" + result
        }

        return result
    }
}
