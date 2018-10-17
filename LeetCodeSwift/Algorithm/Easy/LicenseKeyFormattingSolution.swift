//
// Created by Xi, Paul on 10/16/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LicenseKeyFormattingSolution {
    func licenseKeyFormatting(_ str: String, _ num: Int) -> String {
        var result = ""
        let newStr: String = str.uppercased().split(separator: "-").joined()

        var index = newStr.endIndex
        for idx in (0 ..< newStr.count) {
            if idx % num == 0 && idx != 0 {
                result = "-" + result
            }

            index = newStr.index(before: index)
            result = String(newStr[index]) + result
        }

        return result
    }
}
