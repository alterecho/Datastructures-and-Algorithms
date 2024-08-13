//
//  SmallestSubarray.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 13/8/24.
//

import Foundation

public class SmallestSubarray: Solution {
  
  public typealias Input = (array: [Int], target: Int)
  let input: Input
  
  public required init(input: Input) {
    self.input = input
  }

  public var problemStatement: String {
"""
  Maximum Sum of Subarray of Size k, [1, 2, 3, 4, 5], k = 3, output = 12
"""
  }
      
  func minSubArray_attempt(input: Input) -> Int? {
    return nil
  }

  public func execute() -> Int? {
    return minSubArray_attempt(input: input)
  }
}
