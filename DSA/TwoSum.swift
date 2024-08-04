//
//  TwoSumProblem.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 1/8/24.
//

import Foundation


public class TwoSum: Solution {
  
  public init() {
    
  }
  
  typealias Input = (
    array:[Int],
    target: Int
  )
  typealias Output = (Int, Int)
  var title: String {
    "Two Sum"
  }
  
  var problemStatement: String {
    return "Given an array of integers nums and an integer target, return the indices of the two numbers such that they add up to target."
  }
  
  @discardableResult
  func execute(input: Input) -> Output? {
    var result: (Int, Int)?
    var map = [Int : Int]()
    for (index, num) in input.array.enumerated() {
      if let index2nd = map[input.target - num] {
        result = (index2nd, index)
        break
      }
      map[num] = index
    }
    print(String(describing: result))
    return result
  }
  
  func executeDefault() -> Output? {
    return execute(input: (array: [2, 7, 11, 15], target: 9))
  }
}
