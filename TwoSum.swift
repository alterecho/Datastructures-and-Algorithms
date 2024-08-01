//
//  TwoSumProblem.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 1/8/24.
//

import Foundation


class TwoSum: Solution {
  func problemStatement() -> String {
    return "Given an array of integers nums and an integer target, return the indices of the two numbers such that they add up to target."
  }
  
  func execute() -> (Int, Int)? {
    findTwoSumIndices(in: [2, 7, 11, 15], target: 9)
  }
  
  func findTwoSumIndices(in array:[Int], target: Int) -> (Int, Int)? {
    var map = [Int : Int]()
    for (index, num) in array.enumerated() {
      if let index2nd = map[target - num] {
        return (index2nd, index)
      }
      map[num] = index
    }
    
    return nil
  }
}
