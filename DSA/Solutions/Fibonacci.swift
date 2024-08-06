//
//  Fibonacci.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 6/8/24.
//

import Foundation

public class Fibonacci: Solution {
  var title: String {
    "Two Sum"
  }
  
  var problemStatement: String {
    return "Fibonacci"
  }
  
  private let input: Int
  
  required init(input: Int = 3) {
    self.input = input
  }
  
  private func fibonacci_recursive(count: Int) -> Int {
    guard count > 1 else {
      return count
    }
    return fibonacci_recursive(
      count: count - 1
    ) + fibonacci_recursive(
      count: count - 2
    )
  }
  
  @discardableResult
  func execute() -> Int? {
    return fibonacci_recursive(
      count: input
    )
  }
}
