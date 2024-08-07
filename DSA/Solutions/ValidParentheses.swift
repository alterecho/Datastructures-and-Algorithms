//
//  ValidParentheses.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 3/8/24.
//

import Foundation

class ValidParentheses: Solution {  
  var problemStatement: String {
"""
    Given a string containing just the characters '(', ')', '{', '}', '[', and ']'`, determine if the input string is valid. An input string is valid if:

        Open brackets must be closed by the same type of brackets.
        Open brackets must be closed in the correct order.
"""
  }
  
  private let input: String
  
  required init(input: String = "()[]{}") {
    self.input = input
  }
  
  func isValid_gpt(string: String) -> Bool {
    var stack = [Character]()
    let pairs: [Character: Character] = [")": "(", "}": "{", "]": "["]
    
    for char in string {
      if let matchingOpen = pairs[char] {
        if stack.isEmpty || stack.removeLast() != matchingOpen {
          return false
        }
      } else {
        stack.append(char)
      }
    }
    
    return stack.isEmpty
  }
    
  func execute() -> Bool? {
    let res = isValid_gpt(string: input)
    print("\(input) isValid (paranthesis): \(res)")
    return res
  }
}
