//
//  TreeOperations.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 11/8/24.
//

import Foundation

enum TreeOperations {
  enum Error: Swift.Error {
    case noRoot
  }
  static func invert<T: Equatable>(binaryTree: BinaryTree<T>) throws -> BinaryTree<T> {
    guard let root  = binaryTree.root else {
      throw Error.noRoot
    }
    
    var stack = [BinaryTree<T>.Node]()
    stack.append(root)
    
    while let node = stack.popLast() {
      let tempLeftNode = node.left
      
      node.update(left: node.right)
      node.update(right: tempLeftNode)
      
      if let leftNode = node.left {
        stack.append(leftNode)
      }
      
      if let rightNode = node.right {
        stack.append(rightNode)
      }
    }
    
    return binaryTree
  }
}
