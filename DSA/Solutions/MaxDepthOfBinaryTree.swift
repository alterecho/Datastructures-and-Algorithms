//
//  MaxDepthOfBinaryTree.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

private let Q = """
    104. Maximum Depth of Binary Tree
    Easy
    Topics
    Companies

    Given the root of a binary tree, return its maximum depth.

    A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
    
    Example 1:
    Input: root = [3,9,20,null,null,15,7]
    Output: 3

    Example 2:
    Input: root = [1,null,2]
    Output: 2

    Constraints:
        The number of nodes in the tree is in the range [0, 104].
        -100 <= Node.val <= 100
    """

class MaxDepthOfBinaryTree: Solution {
    public class TreeNode {
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

    var problemStatement: String = Q

    private let input: [Int?]

    required init(input: [Int?]) {
        self.input = input
    }
    
    private func makeTree(array: [Int?], nodeIndex: Int) -> TreeNode? {
        guard let nodeValue = array[nodeIndex] else { return nil }
        let node = TreeNode(nodeValue)
        let leftIndex = nodeIndex * 2 + 1
        let rightIndex = nodeIndex * 2 + 2
        if leftIndex < array.count {
            let leftNode = makeTree(array: array, nodeIndex: leftIndex)
            node.left = leftNode
        }
        
        if rightIndex < array.count {
            let rightNode = makeTree(array: array, nodeIndex: rightIndex)
            node.right = rightNode
        }

        return node
    }

    private func findDepth(_ root: TreeNode) -> Int {
        var maxChildDepth = 0
        if let leftChild = root.left {
            maxChildDepth = findDepth(leftChild)
        }
        
        if let rightChild = root.left {
            maxChildDepth = max(maxChildDepth, findDepth(rightChild))
        }
        
        return 1 + maxChildDepth

    }
    
    func execute() -> Int? {
        guard let treeNode = makeTree(array: input, nodeIndex: 0) else { return nil }
        return findDepth(treeNode) + 1
    }
}
