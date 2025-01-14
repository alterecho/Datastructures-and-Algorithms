//
//  ValidateBinaryTree.swift
//  DSA
//
//  Created by Vijay on 1/14/25.
//

import Foundation

// 98. Validate Binary Search Tree
// Medium
// Topics
// Companies
//
// Given the root of a binary tree, determine if it is a valid binary search tree (BST).
//
// A valid BST is defined as follows:
//
//     The left
//     subtree
//     of a node contains only nodes with keys less than the node's key.
//     The right subtree of a node contains only nodes with keys greater than the node's key.
//     Both the left and right subtrees must also be binary search trees.
//
//
//
// Example 1:
//
// Input: root = [2,1,3]
// Output: true
//
// Example 2:
//
// Input: root = [5,1,4,null,null,3,6]
// Output: false
// Explanation: The root node's value is 5 but its right child's value is 4.
//
//
//
// Constraints:
//
//     The number of nodes in the tree is in the range [1, 104].
//     -231 <= Node.val <= 231 - 1
//

//class TreeNode {
//    var val: Int
//    var left: TreeNode?
//    var right: TreeNode?
//    
//    init(_ val: Int) {
//        self.val = val
//        self.left = nil
//        self.right = nil
//    }
//}
//
//func isValidBST(_ root: TreeNode?) -> Bool {
//    func validate(_ node: TreeNode?, _ lower: Int?, _ upper: Int?) -> Bool {
//        guard let node = node else { return true } // An empty tree is valid
//        
//        // Check if the current node's value is within the valid range
//        if let lower = lower, node.val <= lower { return false }
//        if let upper = upper, node.val >= upper { return false }
//        
//        // Recursively validate the left and right subtrees
//        return validate(node.left, lower, node.val) && validate(node.right, node.val, upper)
//    }
//    
//    return validate(root, nil, nil) // Initially, no bounds on the root
//}
