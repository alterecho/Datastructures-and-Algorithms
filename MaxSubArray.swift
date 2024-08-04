//
//  MaxSubArray.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 4/8/24.
//

import Foundation

class MaxSubArray: Solution {
  
  var title: String {
    String(describing: type(of: self))
  }
  
  var problemStatement: String {
"""
  Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
"""
  }
  
  func maxSubArray_gpt(_ nums: [Int]) -> Int {
      var maxSoFar = nums[0]
      var maxEndingHere = nums[0]
      
      for i in 1..<nums.count {
          maxEndingHere = max(nums[i], maxEndingHere + nums[i])
          maxSoFar = max(maxSoFar, maxEndingHere)
      }
      
      return maxSoFar
  }

  func execute(input: [Int]) -> Int? {
    let res = maxSubArray_gpt(input)
    print("\(input) max subarray: \(res)")
    return res
  }
  
  func executeDefault() -> Int? {
    execute(input: [-2,1,-3,4,-1,2,1,-5,4])
  }
  
}
