//
//  TreeNode.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

public final class TreeNode {
    public static func makeTree(array: [Int?], fromIndex nodeIndex: Int) -> TreeNode? {
        guard let nodeValue = array[nodeIndex] else { return nil }
        let node = TreeNode(nodeValue)
        let leftIndex = nodeIndex * 2 + 1
        let rightIndex = nodeIndex * 2 + 2
        if leftIndex < array.count {
            let leftNode = makeTree(array: array, fromIndex: leftIndex)
            node.left = leftNode
        }
        
        if rightIndex < array.count {
            let rightNode = makeTree(array: array, fromIndex: rightIndex)
            node.right = rightNode
        }

        return node
    }
    
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
