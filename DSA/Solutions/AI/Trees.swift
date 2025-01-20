//
//  Trees.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    class Trees {
        class TreeNode {
            var val: Int
            var left: TreeNode?
            var right: TreeNode?
            init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
                self.val = val
                self.left = left
                self.right = right
            }
        }

//        Question: Perform a level-order traversal of a binary tree.
        // Example usage:
    //    let root = TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3))
        //    print(levelOrderTraversal(root)) // Output: [[1], [2, 3], [4, 5]]
        func levelOrderTraversal(_ root: TreeNode?) -> [[Int]] {
            guard let root = root else { return [] }
            var queue = [root]
            var result = [[Int]]()
            
            while !queue.isEmpty {
                var level = [Int]()
                for _ in 0..<queue.count {
                    let node = queue.removeFirst()
                    level.append(node.val)
                    if let left = node.left { queue.append(left) }
                    if let right = node.right { queue.append(right) }
                }
                result.append(level)
            }
            return result
        }
    }
    
//    Question: Find the lowest common ancestor of two nodes in a binary tree.
    // Example usage:
//    let root = TreeNode(3, TreeNode(5, TreeNode(6), TreeNode(2)), TreeNode(1))
//    let p = root.left! // Node 5
//    let q = root.right! // Node 1
//    print(lowestCommonAncestor(root, p, q)?.val) // Output: 3
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode, _ q: TreeNode) -> TreeNode? {
        guard let root = root else { return nil }
        if root === p || root === q { return root }
        
        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)
        
        if left != nil && right != nil { return root }
        return left ?? right
    }
}
