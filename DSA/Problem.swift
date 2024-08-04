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
  var problemStatement: String { get }
  @discardableResult
  func execute(input: Input) -> Result?
  @discardableResult
  func execute() -> Result?
}
