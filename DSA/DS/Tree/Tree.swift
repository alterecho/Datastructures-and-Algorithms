//
//  Tree.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 10/8/24.
//

import Foundation

public struct BinaryTree<T: Equatable>: CustomStringConvertible {
  public var description: String {
    return root.map { node in
      let leftNodeString = node.left?.value == nil ? "" : "\(node.left!.value)"
      let rightNodeString = node.left?.value == nil ? "" : "\(node.right!.value)"
      return "\(node.value)\n\(leftNodeString) \(rightNodeString)"
    } ?? ""
  }
  
  public class Node {
    let value: T
    private(set) var left: Node?
    private(set) var right: Node?
    
    public init(_ value: T) {
      self.value = value
    }
    
    public func update(left: Node?) {
      self.left = left
    }
    
    public func update(right: Node?) {
      self.right = right
    }
  }
  
  public var root: Node?
  
  public init(values: T...) {
    let nodes = values.map { Node($0) }
    guard let rootNode = nodes.first else { return }
    self.root = rootNode
    
    for i in 1..<nodes.count {
      let parentIndex = (i + 1) / 2 - 1
      let parent = nodes[parentIndex]
      let isLeftNode = i % 2 != 0
      if isLeftNode {
        parent.update(left: nodes[i])
      } else {
        parent.update(right: nodes[i])
      }
    }
  }
}

extension BinaryTree.Node: Equatable {
  public static func == (lhs: BinaryTree<T>.Node, rhs: BinaryTree<T>.Node) -> Bool {
    if lhs.value == rhs.value,
       lhs.left == rhs.left,
       lhs.right == rhs.right {
      return true
    }
    return false
  }
}

extension BinaryTree: Equatable {
  public static func == (lhs: BinaryTree<T>, rhs: BinaryTree<T>) -> Bool {
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

