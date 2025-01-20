//
//  SlidingWindow.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    
//    5. Sliding Window
//    Question: Find the maximum sum of a subarray of size k.
    func maxSumSubarray(_ nums: [Int], _ k: Int) -> Int {
        var maxSum = 0
        var currentSum = 0
        
        for i in 0..<nums.count {
            currentSum += nums[i]
            if i >= k - 1 {
                maxSum = max(maxSum, currentSum)
                currentSum -= nums[i - k + 1]
            }
        }
        return maxSum
    }

    // Example usage:
//    print(maxSumSubarray([1, 4, 2, 10, 23, 3, 1, 0, 20], 4)) // Output: 39
}
