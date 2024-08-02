//
//  Problem.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 1/8/24.
//

import Foundation

protocol Solution {
  associatedtype Input
  associatedtype Result
  
  var title: String {get}
  func problemStatement() -> String
  @discardableResult
  func execute(input: Input) -> Result
}
