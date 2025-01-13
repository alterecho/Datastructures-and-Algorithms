//
//  SymmetricTree.swift
//  DSA
//
//  Created by Vijay on 1/13/25.
//

import Foundation
//
//101. Symmetric Tree
//
//Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).
//
// 
//
//Example 1:
//
//Input: root = [1,2,2,3,4,4,3]
//Output: true
//
//Example 2:
//
//Input: root = [1,2,2,null,3,null,3]
//Output: false
//
// 
//
//Constraints:
//
//    The number of nodes in the tree is in the range [1, 1000].
//    -100 <= Node.val <= 100
//
// 
//Follow up: Could you solve it both recursively and iteratively?

//To determine whether a binary tree is symmetric, you can use a recursive or iterative approach. The problem boils down to checking whether the left and right subtrees of the root are mirrors of each other.
//
//Here’s how you can solve it in Swift:
//1. Recursive Approach:
//
//We compare the left and right subtrees, checking the following conditions:
//
//    Their root values must match.
//    The left subtree of the left tree must match the right subtree of the right tree.
//    The right subtree of the left tree must match the left subtree of the right tree.
//
//class TreeNode {
//    var val: Int
//    var left: TreeNode?
//    var right: TreeNode?
//    
//    init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//func isSymmetric(_ root: TreeNode?) -> Bool {
//    guard let root = root else { return true }
//    return isMirror(root.left, root.right)
//}
//
//func isMirror(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
//    if t1 == nil && t2 == nil { return true }
//    if t1 == nil || t2 == nil { return false }
//    return (t1!.val == t2!.val) &&
//           isMirror(t1!.left, t2!.right) &&
//           isMirror(t1!.right, t2!.left)
//}
//
//// Example Usage
//let root = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))
//print(isSymmetric(root)) // Output: true
//
//2. Iterative Approach:
//
//Using a queue, we check nodes level by level to ensure they are mirrors of each other.
//
//func isSymmetricIterative(_ root: TreeNode?) -> Bool {
//    guard let root = root else { return true }
//    var queue: [(TreeNode?, TreeNode?)] = [(root.left, root.right)]
//    
//    while !queue.isEmpty {
//        let (t1, t2) = queue.removeFirst()
//        
//        if t1 == nil && t2 == nil { continue }
//        if t1 == nil || t2 == nil || t1!.val != t2!.val { return false }
//        
//        queue.append((t1!.left, t2!.right))
//        queue.append((t1!.right, t2!.left))
//    }
//    
//    return true
//}
//
//// Example Usage
//let root2 = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))
//print(isSymmetricIterative(root2)) // Output: true
//
//Explanation of Code:
//
//    Recursive Approach:
//        Base case: If both nodes are nil, return true.
//        If only one is nil, or their values are not equal, return false.
//        Recursively check if t1.left is a mirror of t2.right and t1.right is a mirror of t2.left.
//
//    Iterative Approach:
//        Use a queue to store pairs of nodes to compare.
//        Check symmetry for nodes in pairs.
//        Add children of the nodes to the queue in the order necessary to maintain symmetry checks.
//
//Time and Space Complexity:
//
//    Time Complexity: O(n)O(n), where nn is the number of nodes in the tree. Each node is visited once.
//    Space Complexity:
//        Recursive: O(h)O(h), where hh is the height of the tree (due to recursion stack).
//        Iterative: O(n)O(n), for the queue.
//
//Both approaches are efficient and can be used based on your preference.
