//
// Created by Xi, Paul on 11/8/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class UniqueEmailAddressesSolution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var set: Set<String> = Set()
        for email in emails {
            let atIndex = email.firstIndex(of: "@")
            if let atIndex = atIndex {
                var localName = String(email[email.startIndex..<atIndex])
                let domainName = String(email[email.index(after: atIndex)..<email.endIndex])

                let plusIndex = localName.firstIndex(of: "+")
                if let plusIndex = plusIndex {
                    localName = String(email[email.startIndex..<plusIndex])
                    localName.removeAll {
                        $0 == "."
                    }
                }

                let str = localName + "@" + domainName
                if !set.contains(str) {
                    set.insert(str)
                }
            }

        }

        return set.count
    }
}
