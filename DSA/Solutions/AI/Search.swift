//
//  BinarySearch.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    class Search {
        // Question: Implement Binary Search for a sorted array.
        // Example usage:
        //    let nums = [1, 3, 5, 7, 9]
        //    print(binarySearch(nums, 5)) // Output: 2
        func binarySearch(_ nums: [Int], _ target: Int) -> Int {
            var left = 0, right = nums.count - 1
            
            while left <= right {
                let mid = left + (right - left) / 2
                if nums[mid] == target {
                    return mid
                } else if nums[mid] < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            return -1 // Target not found
        }
    }
}

