//
//  sad.swift
//  DSA
//
//  Created by Vijay on 2/4/25.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        /// base case
    guard nums.isEmpty == false else {
        return [-1, -1]
    }
                
    var leftMostIndex = -1
    var rightMostIndex = -1
    
        /// used in both the left loop and the right loop
    var leftIndex = 0;
    var rightIndex = nums.count - 1;

        /// keep performing binary search on left halves, if a match found
    while leftIndex <= rightIndex {
        var midIndex = leftIndex + (rightIndex - leftIndex) / 2
        
        if nums[midIndex] == target {
            leftMostIndex = midIndex
            rightIndex = midIndex - 1;
        } else if target < nums[midIndex] {
            rightIndex = midIndex - 1;
        } else {
            leftIndex = midIndex + 1;
        }
    }
    
    leftIndex = 0;
    rightIndex = nums.count - 1;
    
        /// keep performing binary search on right halves, if a match found
    while leftIndex <= rightIndex {
        var midIndex = leftIndex + (rightIndex - leftIndex) / 2
        
        if nums[midIndex] == target {
            rightMostIndex = midIndex
            leftIndex = midIndex + 1;
        } else if target < nums[midIndex] {
            rightIndex = midIndex - 1;
        } else {
            leftIndex = midIndex + 1;
        }
    }
    
    return [leftMostIndex, rightMostIndex]
}




    /// Tests
print(
    searchRange([5,7,7,8,8,10], 8)
)
print(
    searchRange([5,7,7,8,8,10], 6)
)
print(
    searchRange([1], 6)
)
print(
    searchRange([1], 1)
)

print(
    searchRange([1, 1], 1)
)

print(
    searchRange([1,3], 1)
)
