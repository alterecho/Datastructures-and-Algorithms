//
//  MaxHeap.swift
//  DSA
//
//  Created by Vijay on 1/6/25.
//

import Foundation

public struct MaxHeap<T: Comparable>: Heap {
    var array: [T]
    init(array: [T]) {
        self.array = array
        heapify()
    }

    mutating func insert(_ value: T) {
        array.append(value)
        siftUp(nodeIndex: array.count - 1)
    }

    func remove() -> T? {
        return nil
    }

    func peek() -> T? {
        return array.first
    }
    
    mutating func extract() -> T? {
        let max = array.removeFirst();
        siftDown(nodeIndex: array.count / 2 - 1)
        return max;
    }
    
    mutating private func siftUp(nodeIndex: Int) {
        guard array.isEmpty == false else { return }
        var i_child = nodeIndex
        while i_child > -1 {
            let i_parent = (i_child - 1) / 2
            if array[i_parent] < array[i_child] {
                array.swapAt(i_parent, i_child)
            }
            i_child -= 1
        }
    }
    
    private mutating func siftDown(nodeIndex: Int) {
        guard array.isEmpty == false else { return }
        var i_parent = nodeIndex
        while i_parent > -1 {
            let i_left = i_parent * 2 + 1
            let i_right = i_parent * 2 + 2
            var i_max = i_parent
            if i_left < array.count && array[i_left] > array[i_parent] {
                i_max = i_left
            }
            if i_right < array.count && array[i_right] > array[i_parent] {
                i_max = i_right
            }

            if (i_max != i_parent) {
                array.swapAt(i_max, i_parent)
                i_parent = i_max
            } else {
                i_parent -= 1
            }
        }
    }

    private mutating func heapify() {
        siftDown(nodeIndex: array.count / 2 - 1)
        print(array)
    }
}
