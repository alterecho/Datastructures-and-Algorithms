//
//  LongestSubstring.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 2/8/24.
//

import Foundation

class LongestSubstring: Solution {
  
  var title: String {
    "LongestSubstring"
  }
  
  func problemStatement() -> String {
    return "Given a string s, find the length of the longest substring without repeating characters."
  }
  
  func lengthOfLongestSubstring(_ s: String) -> Int {
      var charIndex = [Character: Int]()
      var maxLength = 0
      var start = 0
      
      for (index, char) in s.enumerated() {
          if let lastSeenIndex = charIndex[char], lastSeenIndex >= start {
              start = lastSeenIndex + 1
          }
          charIndex[char] = index
          maxLength = max(maxLength, index - start + 1)
      }
      
      return maxLength
  }
  
  func lengthOfLongestSubstring_ownSolution(input: String) -> Int {
    var dict = [Character : Character]()
    var longest = 0
    for c in input {
      if dict[c] == nil {
        dict[c] = c
      } else {
        dict = [:]
      }
      print(dict, dict.count)
      longest = max(longest, dict.count)
    }
    return longest
  }

  
  func execute(input: String = "abcabcbb") -> Int? {
    let longest = lengthOfLongestSubstring_ownSolution(input: input)
    print(
      String(
        describing: longest
      )
    )
    
    return (longest > 0 ? longest : nil)
  }
}
