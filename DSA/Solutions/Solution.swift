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
  
  init(input: Input)
  
  var title: String {get}
  var problemStatement: String { get }
  @discardableResult
  func execute() -> Result?
}
