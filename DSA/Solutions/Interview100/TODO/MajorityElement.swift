//
//  MajorityElement.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

private let Q = """
169. Majority Element
Easy
Topics
Companies

Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

Example 1:

Input: nums = [3,2,3]
Output: 3

Example 2:

Input: nums = [2,2,1,1,1,2,2]
Output: 2

 

Constraints:

    n == nums.length
    1 <= n <= 5 * 104
    -109 <= nums[i] <= 109

 
Follow-up: Could you solve the problem in linear time and in O(1) space?
"""

//def majorityElement(nums):
//    candidate = None
//    count = 0
//
//    # Phase 1: Find the candidate
//    for num in nums:
//        if count == 0:
//            candidate = num
//        count += 1 if num == candidate else -1
//
//    # Phase 2: Return the candidate (verification is not required as per the problem constraints)
//    return candidate
