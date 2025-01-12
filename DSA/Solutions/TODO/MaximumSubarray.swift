//
//  MaximumSubarray.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

//import Foundation
//
//53. Maximum Subarray
//Medium
//Topics
//Companies
//
//Given an integer array nums, find the
//subarray
//with the largest sum, and return its sum.
//
// 
//
//Example 1:
//
//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: The subarray [4,-1,2,1] has the largest sum 6.
//
//Example 2:
//
//Input: nums = [1]
//Output: 1
//Explanation: The subarray [1] has the largest sum 1.
//
//Example 3:
//
//Input: nums = [5,4,-1,7,8]
//Output: 23
//Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
//
// 
//
//Constraints:
//
//    1 <= nums.length <= 105
//    -104 <= nums[i] <= 104
//
// 
//
//Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

//def maxSubArray(nums):
//    # Initialize current_sum and max_sum with the first element
//    current_sum = max_sum = nums[0]
//    
//    # Traverse the array starting from the second element
//    for num in nums[1:]:
//        # Update current_sum to be either the current element itself or
//        # the sum of current_sum + num, whichever is larger
//        current_sum = max(num, current_sum + num)
//        
//        # Update max_sum to keep track of the largest sum encountered
//        max_sum = max(max_sum, current_sum)
//    
//    return max_sum
