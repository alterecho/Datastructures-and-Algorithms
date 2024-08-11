//
//  LinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation

public class LinkedList<T: Equatable>: Equatable, CustomStringConvertible {
  public class Node {
    public let value: T
    private(set) var next: Node?
    private(set) var previous: Node?
    
    public init(_ value: T) {
      self.value = value
    }
    
    public func set(next: Node?) {
      self.next = next
    }
    
    public func set(previous: Node?) {
      self.previous = previous
    }
  }
  
  private(set) var root: Node?
  
  public init(_ values: T...) {
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
  
  public var description: String {
    var string = ""
    
    var iterator = root
    while iterator != nil {
      guard let value = iterator?.value else {
        continue
      }
      string += string.isEmpty ? "" : "->"
      string += "\(value)"
      iterator = iterator?.next
    }
    return string
  }
  
  public func update(root: Node?) {
    self.root = root
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
