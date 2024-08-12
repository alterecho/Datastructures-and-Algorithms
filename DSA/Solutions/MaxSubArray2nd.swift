//
//  MaxSubArray2nd.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 12/8/

import Foundation

public class MaxSubArray2nd: Solution {
  
  public typealias Input = (array: [Int], windowSize: Int)
  let input: Input
  
  public required init(input: Input) {
    self.input = input
  }

  public var problemStatement: String {
"""
  Maximum Sum of Subarray of Size k, [1, 2, 3, 4, 5], k = 3, output = 12
"""
  }
      
  func maxSubArray_attempt(input: Input) -> Int? {
    let array = input.array
    let windowSize = input.windowSize
    
    guard input.windowSize < array.count else {
      return nil
    }
    
    var max = array[0..<windowSize].reduce(0, +)
    for i in windowSize..<input.array.count {
      let maxSum = max + input.array[i] - input.array[i - windowSize]
      max = Swift.max(max, maxSum)
    }
    return max
  }

  public func execute() -> Int? {
    return maxSubArray_attempt(input: input)
  }
}
