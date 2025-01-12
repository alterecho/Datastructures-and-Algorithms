//
//  ReverseLinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation

private let Q = """
Given the head of a singly linked list, reverse the list, and return the reversed list.

 

Example 1:

Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

Example 2:

Input: head = [1,2]
Output: [2,1]

Example 3:

Input: head = []
Output: []

 

Constraints:

    The number of nodes in the list is the range [0, 5000].
    -5000 <= Node.val <= 5000
"""

public class ReverseLinkedList: Solution {

    private let input: LinkedList<Int>

    public required init(
        input: LinkedList<Int> = LinkedList(1, 2, 4, 1, 3, 4)
    ) {
        self.input = input
    }

    public var problemStatement: String {
        "Reverse a linked list"
    }

    public func execute() -> LinkedList<Int>? {
        var iterator = input.root
        print("before reverse: \(input)")
        while iterator != nil {
            let next = iterator?.next
            iterator?.configure(next: iterator?.previous)
            iterator?.configure(previous: iterator?.next)
            input.configure(root: iterator)
            iterator = next
        }
        print("after reverse: \(input)")
        return input
    }
}
