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
  func execute(input: Int) -> Int? {
    return fibonacci_recursive(
      count: input
    )
  }
  
  func execute() -> Int? {
    return execute(input: 3)
  }
}
