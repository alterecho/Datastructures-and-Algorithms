//
//  ReverseLinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation

public class ReverseLinkedList: Solution {
  
  private let input: LinkedList<Int>
  
  public required init(
    input: LinkedList<Int> = LinkedList(1, 2, 4, 1, 3, 4)
  ) {
    self.input = input
  }

  public var problemStatement: String {
    "Reverse a linked list"
  }
    
  public func execute() -> LinkedList<Int>? {
    var iterator = input.root
    print("before reverse: \(input)")
    while iterator != nil {
      let next = iterator?.next
      iterator?.configure(next: iterator?.previous)
      iterator?.configure(previous: iterator?.next)
      input.update(root: iterator)
      iterator = next
    }
    print("after reverse: \(input)")
    return input
  }
}
