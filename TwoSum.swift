//
//  TwoSumProblem.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 1/8/24.
//

import Foundation


class TwoSum: Solution {
  var title: String {
    "Two Sum"
  }
  
  func problemStatement() -> String {
    return "Given an array of integers nums and an integer target, return the indices of the two numbers such that they add up to target."
  }
  
  @discardableResult
  func execute(
    input: (
      array:[Int], target: Int
    ) = (
      array: [2, 7, 11, 15],
      target: 9
    )
  ) -> (Int, Int)? {
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
}
