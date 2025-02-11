//
//  MissingNumber.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

//268. Missing Number
//
//Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
//
//Example 1:
//
//Input: nums = [3,0,1]
//
//Output: 2
//
//Explanation:
//
//n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
//
//Example 2:
//
//Input: nums = [0,1]
//
//Output: 2
//
//Explanation:
//
//n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
//
//Example 3:
//
//Input: nums = [9,6,4,2,3,5,7,0,1]
//
//Output: 8
//
//Explanation:
//
//n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

//Constraints:
//
//    n == nums.length
//    1 <= n <= 104
//    0 <= nums[i] <= n
//    All the numbers of nums are unique.
//
// 


//def missingNumber(nums):
//    n = len(nums)
//    expected_sum = n * (n + 1) // 2
//    actual_sum = sum(nums)
//    return expected_sum - actual_sum

//def missingNumber(nums):
//    n = len(nums)
//    result = n  # Start with n (to include the last number in range)
//    for i, num in enumerate(nums):
//        result ^= i ^ num
//    return result
