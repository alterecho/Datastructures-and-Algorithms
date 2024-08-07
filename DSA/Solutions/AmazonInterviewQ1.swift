//
//  AmazonInterviewQ1.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 7/8/24.
//

import Foundation

public class AmazonInterviewQ1: Solution {
  
  typealias Input = (word: String, a: Int, b: Int)
  
  let input: Input
  
  required init(input: Input) {
    self.input = input
  }
  

  var problemStatement: String {
  """
  Data analysts at Amazon are building a utility to identify redundant words in advertisements.
  They define a string as redundant if the length of the
  string, / word / = a * V + b * C, where a and b are
  given integers and Vand C are the numbers of vowels and consonants in the string word.
  Given a string word, and two integers, a, and b, find the number of redundant substrings of word.
  Note: A substring is a contiguous group of 0 or more characters in a string. For example- "bcb" is a substring of "abba",
  ', while "bba" is not.
  Example
  word = "abbacc", a = -1, b = 2.
  word
  "abb" 1 2 3
  "bba" 1 2 3
  "bac" 1 2 3
  "acc" 1 2 3
  "abbacc" 2 4 6
  """
  }
  
  func execute() -> Int? {
    
  }
}

