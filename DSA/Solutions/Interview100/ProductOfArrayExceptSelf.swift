//
//  ProductOfArrayExceptSelf.swift
//  DSA
//
//  Created by Vijay on 1/13/25.
//

import Foundation

private let Q = """
// 238. Product of Array Except Self
//
// Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
// The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
// You must write an algorithm that runs in O(n) time and without using the division operation.
//  
// 
// Example 1:
// Input: nums = [1,2,3,4]
// Output: [24,12,8,6]
// 
// Example 2:
// Input: nums = [-1,1,0,-3,3]
// Output: [0,0,9,0,0]
// 
// Constraints:
// 
//     2 <= nums.length <= 105
//     -30 <= nums[i] <= 30
//     The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
// 
// Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
"""

class ProductOfArrayExceptSelf: Solution {
    var problemStatement: String = Q;
    let input: [Int]
    
    required init(input: [Int]) {
        self.input = input
    }
    
    func execute() -> [Int]? {
        var leftProduct = 1
        var rightProduct = 1
        var result = [Int](repeating: 1, count: input.count)
        
        for i in 0..<input.count {
            result[i] *= leftProduct
            leftProduct *= input[i]
        }
        
        for i in (0..<input.count).reversed() {
            result[i] *= rightProduct
            rightProduct *= input[i]
        }
        
        return result

    }
}
