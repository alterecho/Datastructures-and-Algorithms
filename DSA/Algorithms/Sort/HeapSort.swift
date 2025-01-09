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
    var elements: [T]
    required init(elements: [T]) {
        self.elements = elements
    }
    
    private func sort() {
        
    }
}
