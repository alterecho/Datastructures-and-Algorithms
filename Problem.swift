//
//  Problem.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 1/8/24.
//

import Foundation

protocol Solution {
  associatedtype Result
  func problemStatement() -> String
  func execute() -> Result
}
