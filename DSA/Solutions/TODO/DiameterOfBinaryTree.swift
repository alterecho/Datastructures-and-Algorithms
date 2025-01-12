//
//  DiameterOfBinaryTree.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

//543. Diameter of Binary Tree
//Easy
//Topics
//Companies
//
//Given the root of a binary tree, return the length of the diameter of the tree.
//
//The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
//
//The length of a path between two nodes is represented by the number of edges between them.
//
// 
//
//Example 1:
//
//Input: root = [1,2,3,4,5]
//Output: 3
//Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].
//
//Example 2:
//
//Input: root = [1,2]
//Output: 1
//
// 
//
//Constraints:
//
//    The number of nodes in the tree is in the range [1, 104].
//    -100 <= Node.val <= 100
//


//class TreeNode:
//    def __init__(self, val=0, left=None, right=None):
//        self.val = val
//        self.left = left
//        self.right = right
//
//class Solution:
//    def diameterOfBinaryTree(self, root: TreeNode) -> int:
//        self.diameter = 0
//        
//        def dfs(node):
//            if not node:
//                return 0
//            left_depth = dfs(node.left)
//            right_depth = dfs(node.right)
//            
//            # The diameter at this node is the sum of the left and right depths
//            self.diameter = max(self.diameter, left_depth + right_depth)
//            
//            # Return the depth of the current node
//            return max(left_depth, right_depth) + 1
//        
//        dfs(root)
//        return self.diameter
