//
//  MiddleOfLinkedList.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

//876. Middle of the Linked List
//Easy
//Topics
//Companies
//
//Given the head of a singly linked list, return the middle node of the linked list.
//
//If there are two middle nodes, return the second middle node.
//
// 
//
//Example 1:
//
//Input: head = [1,2,3,4,5]
//Output: [3,4,5]
//Explanation: The middle node of the list is node 3.
//
//Example 2:
//
//Input: head = [1,2,3,4,5,6]
//Output: [4,5,6]
//Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
//
// 
//
//Constraints:
//
//    The number of nodes in the list is in the range [1, 100].
//    1 <= Node.val <= 100
//


//class ListNode:
//    def __init__(self, val=0, next=None):
//        self.val = val
//        self.next = next
//
//def middleNode(head: ListNode) -> ListNode:
//    slow = head
//    fast = head
//    
//    # Traverse the list with slow and fast pointers
//    while fast and fast.next:
//        slow = slow.next          # slow moves 1 step
//        fast = fast.next.next     # fast moves 2 steps
//    
//    # When the loop ends, slow points to the middle node
//    return slow
//
