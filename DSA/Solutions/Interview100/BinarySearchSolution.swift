//
//  BinarySearchSolution.swift
//  DSA
//
//  Created by Vijay on 1/11/25.
//

import Foundation

private let Q = """
Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

You must write an algorithm with O(log n) runtime complexity.

 

Example 1:

Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4

Example 2:

Input: nums = [-1,0,3,5,9,12], target = 2
Output: -1
Explanation: 2 does not exist in nums so return -1

 

Constraints:

    1 <= nums.length <= 104
    -104 < nums[i], target < 104
    All the integers in nums are unique.
    nums is sorted in ascending order.

"""

class BinarySearchSolution: Solution {
    
    typealias Input = (num: Int, array: [Int])
    let input: Input
    var problemStatement = Q
    
    required init(input: Input) {
        self.input = input
    }
    
    func execute() -> Int? {
        var left = 0
        var right = input.array.count - 1
        while left <= right {
            
            let mid = left + (right - left) / 2
            if input.array[mid] == input.num {
                return mid
            } else if input.num > input.array[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return -1
    }
    
}

