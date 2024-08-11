//
//  MaxSubArray.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 4/8/24.
//

import Foundation

public class MaxSubArray: Solution {
  public var problemStatement: String {
"""
  Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
"""
  }
  
  let input: [Int]
  
  public required init(input: [Int] = [-2, 1, -3, 4, -1, 2, 1, -5, 4]) {
    self.input = input
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
  
  func maxSubArray_attempt(input: [Int]) -> Int {
    var accumulator = 0
    return input.reduce(0) { partialResult, num in
      let sum = accumulator + num
      if num > sum {
        accumulator = num
      } else {
        accumulator = sum
      }
      
      return max(accumulator, partialResult)
    }
  }

  public func execute() -> Int? {
//    let res = maxSubArray_gpt(input)
    let res = maxSubArray_attempt(input: input)
    print("\(input) max subarray: \(res)")
    return res
  }
}
