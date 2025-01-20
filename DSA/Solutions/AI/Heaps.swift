//
//  Heap.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    
    class Heaps {
        //    Question: Find the Kth largest element in an array using a min-heap.
        // Example usage:
    //    print(findKthLargest([3, 2, 1, 5, 6, 4], 2)) // Output: 5

            func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
                var heap = nums.prefix(k).sorted()
                
                for num in nums[k...] {
                    if num > heap[0] {
                        heap[0] = num
                        heap.sort()
                    }
                }
                return heap[0]
            }
    }
}
