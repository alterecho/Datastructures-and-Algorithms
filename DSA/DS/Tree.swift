//
//  Tree.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 10/8/24.
//

import Foundation

struct BinaryTree<T: Equatable> {
  class Node {
    let value: T
    private(set) var left: Node?
    private(set) var right: Node?
    
    init(_ value: T) {
      self.value = value
    }
    
    func update(left: Node?) {
      self.left = left
    }
    
    func update(right: Node?) {
      self.right = right
    }
  }
  
  var root: Node?
  
  init(root: Node?) {
    self.root = root
  }
}
