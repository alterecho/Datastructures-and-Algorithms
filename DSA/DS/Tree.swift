//
//  Tree.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 10/8/24.
//

import Foundation

struct BinaryTree<T: Equatable>: CustomStringConvertible {
  
  var description: String {
    return root.map { node in
      let leftNodeString = node.left?.value == nil ? "" : "\(node.left!.value)"
      let rightNodeString = node.left?.value == nil ? "" : "\(node.right!.value)"
      return "\(node.value)\n\(leftNodeString) \(rightNodeString)"
    } ?? ""
  }
  
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

extension BinaryTree.Node: Equatable {
  static func == (lhs: BinaryTree<T>.Node, rhs: BinaryTree<T>.Node) -> Bool {
    if lhs.value == rhs.value,
       lhs.left == rhs.left,
       lhs.right == rhs.right {
      return true
    }
    return false
  }
}


extension BinaryTree: Equatable {
  static func == (lhs: BinaryTree<T>, rhs: BinaryTree<T>) -> Bool {
    var lhsStack = [BinaryTree.Node]()
    var rhsStack = [BinaryTree.Node]()
    
    while let lhsNode = lhsStack.popLast(),
          let rhsNode = rhsStack.popLast() {
      guard lhsNode == rhsNode else {
        return false
      }
      lhsStack.append(lhsNode)
      rhsStack.append(lhsNode)
    }
    return true
  }
}

