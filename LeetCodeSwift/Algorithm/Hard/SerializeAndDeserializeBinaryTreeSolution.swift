//
// Created by Xi, Paul on 10/3/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class SerializeAndDeserializeBinaryTreeSolution {
    public func serialize(_ root: TreeNode?) -> String {
        guard let root = root else {
            return "[null]"
        }

        let result = rserialize(root, "")
        return "[" + String(result[result.startIndex..<result.index(before: result.endIndex)]) + "]"
    }

    private func rserialize(_ root: TreeNode?, _ str: String) -> String {
        guard let root = root else {
            return str + "null,"
        }

        var result = str + String(root.val) + ","
        result = rserialize(root.left, result)
        result = rserialize(root.right, result)

        return result
    }

    public func deserialize(_ data: String) -> TreeNode? {
        guard data.count > 0 else {
            return nil
        }

        let str: String = String(data[data.index(after: data.startIndex)..<data.index(before: data.endIndex)])
        var list: [String] = str.split(separator: ",").map { item in
            String(item)
        }

        return rdeserialize(&list)
    }

    private func rdeserialize(_ list: inout [String]) -> TreeNode? {
        if list[0] == "null" {
            list.removeFirst()
            return nil
        }

        let node: TreeNode = TreeNode(Int(list.removeFirst())!)
        node.left = rdeserialize(&list)
        node.right = rdeserialize(&list)

        return node
    }
}
