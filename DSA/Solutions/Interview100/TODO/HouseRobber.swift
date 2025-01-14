//
//  HouseRobber.swift
//  DSA
//
//  Created by Vijay on 1/14/25.
//

import Foundation

//198. House Robber
//Medium
//Topics
//Companies
//
//You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
//
//Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.
//
// 
//
//Example 1:
//
//Input: nums = [1,2,3,1]
//Output: 4
//Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
//Total amount you can rob = 1 + 3 = 4.
//
//Example 2:
//
//Input: nums = [2,7,9,3,1]
//Output: 12
//Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
//Total amount you can rob = 2 + 9 + 1 = 12.
//
// 
//
//Constraints:
//
//    1 <= nums.length <= 100
//    0 <= nums[i] <= 400
//
// SOLUTION
// To solve this problem, we can use dynamic programming. We'll create an array max_amount where max_amount [il represents the maximum amount of money we can rob from houses 0 to i.
// For each house i, we have two options:
// 1. Rob the current house i, in which case we cannot rob the previous house i-1. So the total amount of money would be nums [i] + max_amount [i-21 (if 1-2 exists).
// 2. Do not rob the current house i, in which case we can rob the previous house 1-1. So the total amount of money would be max_ amount [1-1].
// We'll choose the option that gives us the maximum amount of money.
// The time complexity of this solution is O(n) because we iterate through the nums array once.
// def rob(self, nums: List[int]) -> int:
// if not nums: return o
// if len(nums) = 1:
// return nums(0]
// n = len (nums)
// max_ money max_money [0] max_ money (1)
// * n nums (ol
// = max(nums nums nums [1])
// for i in range(2, n):
// # Decide whether to rob the current house or not
// max_money [t] = max(max_money[i-1], nums[t] + max_money [t-2])
// # Last element in max_money array contains the result
// return max_money (-1]

