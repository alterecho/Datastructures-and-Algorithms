//
//  InvertBinaryTree.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 13/8/24.
//

import Foundation

public class InvertBinaryTree: Solution {

    private let binaryTree: BinaryTree<Int>

    public required init(
        input: BinaryTree<Int>
    ) {
        self.binaryTree = input
    }

    public var problemStatement: String {
        "Invert a binary tree"
    }

    public func execute() -> BinaryTree<Int>? {
        guard let root = binaryTree.root else {
            return nil
        }

        var stack = [BinaryTree<Int>.Node]()
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
