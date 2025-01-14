//
//  SortedArrayToBinarySearchTree.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

//108. Convert Sorted Array to Binary Search Tree
//Easy
//Topics
//Companies
//
//Given an integer array nums where the elements are sorted in ascending order, convert it to a
//height-balanced
//binary search tree.
//
// 
//
//Example 1:
//
//Input: nums = [-10,-3,0,5,9]
//Output: [0,-3,9,-10,null,5]
//Explanation: [0,-10,5,null,-3,null,9] is also accepted:
//
//Example 2:
//
//Input: nums = [1,3]
//Output: [3,1]
//Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.
//
// 
//
//Constraints:
//
//    1 <= nums.length <= 104
//    -104 <= nums[i] <= 104
//    nums is sorted in a strictly increasing order.
//
//

//# Definition for a binary tree node.
//class TreeNode:
//    def __init__(self, val=0, left=None, right=None):
//        self.val = val
//        self.left = left
//        self.right = right
//
//def sortedArrayToBST(nums):
//    # Helper function to recursively build the tree
//    def helper(left, right):
//        # Base case: if left > right, it means the subarray is empty
//        if left > right:
//            return None
//        
//        # Find the middle index
//        mid = (left + right) // 2
//        
//        # Create a tree node from the middle element
//        root = TreeNode(nums[mid])
//        
//        # Recursively build the left and right subtrees
//        root.left = helper(left, mid - 1)   # Left subtree
//        root.right = helper(mid + 1, right) # Right subtree
//        
//        return root
//    
//    # Call the helper function to build the tree from the entire array
//    return helper(0, len(nums) - 1)
