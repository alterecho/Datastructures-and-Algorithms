//
//  MergeSortedLists.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 2/8/24.
//

import Foundation

public class MergeSortedLists: Solution {
    public typealias Input = (l1: LinkedList<Int>, l2: LinkedList<Int>)

    private let input: Input

    public required init(input: Input = MergeSortedLists.defaultInput) {
        self.input = input
    }

    @usableFromInline
    static let defaultInput: Input = {
        let l1 = LinkedList(1, 2, 4)
        let l2 = LinkedList(1, 3, 4)

        return MergeSortedLists.Input(l1, l2)
    }()

    public var problemStatement: String {
        "Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists"
    }

    func mergeTwoLists_gpt(
        _ l1: LinkedList<Int>.Node?, _ l2: LinkedList<Int>.Node?
    ) -> LinkedList<Int>.Node? {
        let dummy = LinkedList.Node(0)
        var current: LinkedList.Node? = dummy
        var l1 = l1
        var l2 = l2

        while l1 != nil && l2 != nil {
            if l1!.value <= l2!.value {
                current?.configure(next: l1)
                l1 = l1?.next
            } else {
                current?.configure(next: l2)
                l2 = l2?.next
            }
            current = current?.next
        }
        current?.configure(next: l1 ?? l2)
        return dummy.next
    }

    func mergeTwoLists_my(l1: LinkedList<Int>, l2: LinkedList<Int>)
        -> LinkedList<Int>?
    {
        var l1 = l1.root
        var l2 = l2.root
        let l: LinkedList = LinkedList(0)
        var stepper: LinkedList.Node? = l.root
        while let l1_u = l1, let l2_u = l2 {
            if l1_u.value <= l2_u.value {
                stepper?.configure(next: l1)
                l1 = l1?.next
            } else {
                stepper?.configure(next: l2)
                l2 = l2?.next
            }
            stepper = stepper?.next
        }
        stepper?.configure(next: l1 ?? l2)
        l.configure(root: l.root?.next)
        return l
    }

    public func execute() -> LinkedList<Int>? {
        let mergedList = mergeTwoLists_my(l1: input.l1, l2: input.l2)
        let string = mergedList.map { node in
            var node: LinkedList.Node? = node.root
            var str = ""
            while node != nil {
                if let nodeUW = node {
                    if str.count > 0 {
                        str += " -> "
                    }
                    str += " \(nodeUW.value)"
                    node = node?.next
                }
            }
            return str
        }

        print(string ?? "")
        return mergedList
    }
}
