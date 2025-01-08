//
//  QuickSort.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

public class QuickSort<T: Comparable>: Sort {

    private(set) public var elements: [T] = []

    public required init(elements: [T]) {
        self.elements = sort(elements: elements)
    }

    private func sort(elements: [T]) -> [T] {
        guard elements.count > 1 else {
            return elements
        }

        let i_mid = elements.count / 2
        let mid = elements[i_mid]
        let lessThanArray = elements.filter { $0 < mid }
        let equalToArray = elements.filter { $0 == mid }
        let greaterThanArray = elements.filter { $0 > mid }

        return sort(elements: lessThanArray) + equalToArray
            + sort(elements: greaterThanArray)
    }
}
