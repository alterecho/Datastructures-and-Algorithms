//
//  ReverseLinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation

class ReverseLinkedList: Solution {
  
  private let input: LinkedList<Int>
  
  required init(
    input: LinkedList<Int> = LinkedList(1, 2, 4, 1, 3, 4)
  ) {
    self.input = input
  }

  var problemStatement: String {
    "Reverse a linked list"
  }
    
  func execute() -> LinkedList<Int>? {
    var iterator = input.root
    print("before reverse: \(input)")
    while iterator != nil {
      let next = iterator?.next
      iterator?.set(next: iterator?.previous)
      iterator?.set(previous: iterator?.next)
      input.update(root: iterator)
      iterator = next
    }
    print("after reverse: \(input)")
    return input
  }
}
