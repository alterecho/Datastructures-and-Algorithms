//
//  HeapSort.swift
//  DSA
//
//  Created by Vijay on 1/9/25.
//

import Foundation

/*
    Heap Sort (O(n log n) time, O(1) space): In-place sorting but not stable.
 */
class HeapSort<T: Comparable>: Sort {
    
    private(set) public var elements: [T] = []
    
    required init(elements: [T]) {
        self.elements = sort(array: elements)
        
    }
    
    private func sort(array: [T]) -> [T] {
        var heapifiedArray = array;
        for i in stride(from: array.count / 2 - 1, through: 0, by: -1) {
            heapifiedArray = heapify(array: heapifiedArray, size: array.count, parentIndex: i);
        }
        
        var sortedArray = heapifiedArray
        for i in stride(from: array.count - 1, through: 1, by: -1) {
            sortedArray.swapAt(0, i);
            sortedArray = heapify(array: sortedArray, size: i, parentIndex: 0)
        }
        
        return sortedArray
    }
    
    private func heapify(array: [T], size: Int, parentIndex i_parent: Int) -> [T] {
        var array = array;
        let i_left = i_parent * 2 + 1;
        let i_right = i_parent * 2 + 2;
        
        var i_max = i_parent;
        if i_left < size && array[i_left] > array[i_max] {
            i_max = i_left;
            
        }
        
        if i_right < size && array[i_right] > array[i_max] {
            i_max = i_right;
        }
        
        if (i_max != i_parent) {
            array.swapAt(i_max, i_parent);
            array = heapify(array: array, size: size, parentIndex: i_max)
        }
        
        return array;
    }
}
