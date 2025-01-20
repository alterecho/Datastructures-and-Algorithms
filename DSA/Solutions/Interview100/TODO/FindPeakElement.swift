////
////  FindPeakElement.swift
////  DSA
////
////  Created by Vijay on 1/19/25.
////
//
//import Foundation
//
////162. Find Peak Element
////Medium
////Topics
////Companies
////
////A peak element is an element that is strictly greater than its neighbors.
////
////Given a 0-indexed integer array nums, find a peak element, and return its index. If the array contains multiple peaks, return the index to any of the peaks.
////
////You may imagine that nums[-1] = nums[n] = -∞. In other words, an element is always considered to be strictly greater than a neighbor that is outside the array.
////
////You must write an algorithm that runs in O(log n) time.
////
//// 
////
////Example 1:
////
////Input: nums = [1,2,3,1]
////Output: 2
////Explanation: 3 is a peak element and your function should return the index number 2.
////
////Example 2:
////
////Input: nums = [1,2,1,3,5,6,4]
////Output: 5
////Explanation: Your function can return either index number 1 where the peak element is 2, or index number 5 where the peak element is 6.
////
//// 
////
////Constraints:
////
////    1 <= nums.length <= 1000
////    -231 <= nums[i] <= 231 - 1
////    nums[i] != nums[i + 1] for all valid i.
////
//
//
//To solve the problem in O(log⁡n)O(logn) time, you can use a binary search approach. Here’s the step-by-step explanation:
//
//    Use binary search to look for a peak element. A peak element is any element that is greater than its neighbors.
//    Start with two pointers, low and high, to represent the search range.
//    Calculate the middle index, mid.
//        If nums[mid] > nums[mid + 1], then the peak must be on the left side (including mid), so adjust high = mid.
//        Otherwise, the peak must be on the right side, so adjust low = mid + 1.
//    Repeat the process until low equals high. At this point, low (or high) will be pointing to a peak element.
//
//Python Implementation:
//
//def find_peak_element(nums):
//    low, high = 0, len(nums) - 1
//    
//    while low < high:
//        mid = (low + high) // 2
//        # Compare middle element with the next element
//        if nums[mid] > nums[mid + 1]:
//            # Peak is on the left side (including mid)
//            high = mid
//        else:
//            # Peak is on the right side
//            low = mid + 1
//    
//    # low (or high) will be the peak index
//    return low
