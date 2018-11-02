//
// Created by Xi, Paul on 9/23/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LRUCacheSolution {

    class DLinkedNode {
        var key = 0
        var value = 0
        var pre: DLinkedNode?
        var post: DLinkedNode?
    }

    var count = 0
    var capacity = 0
    var header: DLinkedNode!
    var tail: DLinkedNode!
    var cache: [Int: DLinkedNode] = [:]

    init(capacity: Int) {
        self.capacity = capacity
        self.header = DLinkedNode()
        self.tail = DLinkedNode()
        self.header.post = self.tail
        self.tail.pre = self.header
    }

    func get(_ key: Int) -> Int {
        if let node = self.cache[key] {
            self.removeNode(node)
            self.addNode(node)
            return node.value
        } else {
            return -1
        }
    }

    func put(_ key: Int, _ value: Int) {
        if let node = self.cache[key] {
            node.value = value
            self.removeNode(node)
            self.addNode(node)
        } else {
            if self.count == self.capacity {
                self.cache.removeValue(forKey: self.tail.pre!.key)
                self.removeNode(self.tail.pre!)
                self.count -= 1
            }
            let newNode = DLinkedNode()
            newNode.key = key
            newNode.value = value
            self.addNode(newNode)
            self.cache[key] = newNode
            self.count += 1
        }
    }

    private func addNode(_ node: DLinkedNode) {
        header.post!.pre = node
        node.post = header.post
        header.post = node
        node.pre = header
    }

    private func removeNode(_ node: DLinkedNode) {
        node.pre!.post = node.post
        node.post!.pre = node.pre
    }
}
