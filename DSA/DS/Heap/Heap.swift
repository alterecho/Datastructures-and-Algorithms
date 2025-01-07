//
//  Heap.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

protocol Heap {
  associatedtype T: Comparable
  
  init(array: [T])
  var array: [T] { get }
  
  func peek() -> T?
    mutating func insert(_: T)
    mutating func extract() -> T?
}
