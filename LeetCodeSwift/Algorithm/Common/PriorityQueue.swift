//
// Created by Xi, Paul on 9/27/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PriorityQueue<T> {
    private var heap: [T] = [T]()
    private let ordered: (T, T) -> Bool

    init(order: @escaping (T, T) -> Bool) {
        self.ordered = order
    }

    var isEmpty: Bool {
        return heap.isEmpty
    }
    var count: Int {
        return heap.count
    }

    func push(_ element: T) {
        heap.append(element)
        swim(heap.count - 1)
    }

    func pop() -> T? {
        if self.isEmpty {
            return nil
        }

        if self.heap.count == 1 {
            return heap.remove(at: 0)
        }

        heap.swapAt(0, heap.count - 1)
        let temp = heap.removeLast()
        sink(0)
        return temp
    }

    func peek() -> T? {
        if self.isEmpty {
            return nil
        }

        return self.heap[0]
    }

    private func sink(_ index: Int) {
        var index = index
        while 2 * index + 1 < heap.count {
            let leftChildIndex = 2 * index + 1

            var first = index
            if leftChildIndex < heap.count && ordered(heap[leftChildIndex], heap[first]) {
                first = leftChildIndex
            }

            let rightChildIndex = leftChildIndex + 1
            if rightChildIndex < heap.count && ordered(heap[rightChildIndex], heap[first]) {
                first = rightChildIndex
            }

            if index == first {
                break
            }

            heap.swapAt(index, first)
            index = first
        }
    }

    private func swim(_ index: Int) {
        var index = index
        while index > 0 && ordered(heap[index], heap[(index - 1) / 2]) {
            heap.swapAt((index - 1) / 2, index)
            index = (index - 1) / 2
        }
    }
}

extension PriorityQueue where T: Comparable {
    func remove(_ element: T) {
        if let index = heap.index(of: element) {
            heap.swapAt(index, heap.count - 1)
            heap.removeLast()
            if index < heap.count {
                swim(index)
                sink(index)
            }
        }
    }
}
