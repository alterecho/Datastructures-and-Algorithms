//
//  Sort.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    class Sort {
        //    Question: Implement the Merge Sort algorithm.
        // Example usage:
        // print(mergeSort([5, 2, 9, 1, 5, 6])) // Output: [1, 2, 5, 5, 6, 9]
            func mergeSort(_ array: [Int]) -> [Int] {
                guard array.count > 1 else { return array }
                
                let mid = array.count / 2
                let left = mergeSort(Array(array[..<mid]))
                let right = mergeSort(Array(array[mid...]))
                
                return merge(left, right)
            }

            func merge(_ left: [Int], _ right: [Int]) -> [Int] {
                var result = [Int]()
                var i = 0, j = 0
                
                while i < left.count && j < right.count {
                    if left[i] < right[j] {
                        result.append(left[i])
                        i += 1
                    } else {
                        result.append(right[j])
                        j += 1
                    }
                }
                result.append(contentsOf: left[i...])
                result.append(contentsOf: right[j...])
                return result
            }
    }
}
