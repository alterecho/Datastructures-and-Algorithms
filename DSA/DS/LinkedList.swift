//
//  LinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation


public class LinkedList<T: Equatable>: Equatable {
  public class Node {
    public let value: T
    private(set) var next: Node?
    private(set) var previous: Node?
    
    public init(_ value: T) {
      self.value = value
    }
    
    func set(next: Node?) {
      self.next = next
    }
    func set(previous: Node?) {
      self.previous = previous
    }
  }
  
  let root: Node?
  
  init(_ values: T...) {
    guard let firstValue = values.first else {
      root = nil
      return
    }
    self.root = values.reduce(
      Node(firstValue)
    ) { partialResult, value in
      let node = Node(firstValue)
      partialResult.set(next: node)
      return partialResult
    }
  }
  
  public static func == (lhs: LinkedList<T>, rhs: LinkedList<T>) -> Bool {
    var lhs: Node? = lhs.root
    var rhs: Node? = rhs.root
    while lhs != nil {
      if lhs?.value != rhs?.value {
        return false
      }
      lhs = lhs?.next
      rhs = rhs?.next
    }
    return true
  }
}
