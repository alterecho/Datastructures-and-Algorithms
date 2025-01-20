//
//  ContainsDuplicate.swift
//  DSA
//
//  Created by Vijay on 1/18/25.
//

import Foundation

//217. Contains Duplicate
//Easy
//Topics
//Companies
//
//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
//
// 
//
//Example 1:
//
//Input: nums = [1,2,3,1]
//
//Output: true
//
//Explanation:
//
//The element 1 occurs at the indices 0 and 3.
//
//Example 2:
//
//Input: nums = [1,2,3,4]
//
//Output: false
//
//Explanation:
//
//All elements are distinct.
//
//Example 3:
//
//Input: nums = [1,1,1,3,3,4,3,2,4,2]
//
//Output: true
//
// 
//
//Constraints:
//
//    1 <= nums.length <= 105
//    -109 <= nums[i] <= 109
//

//SOLUTION
//
//To solve this problem, we can use a set data structure to keep track of the unique elements encountered while iterating through the array.
//
//If we encounter an element that is already present in the set, it means that the array contains a duplicate, and we can return True.
//
//If we complete the iteration without finding any duplicates, we can return False.
//
//The time complexity of the given code is O(n), where n is the number of elements in the input list nums.
