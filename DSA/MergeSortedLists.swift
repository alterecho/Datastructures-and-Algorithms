//
//  MergeSortedLists.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 2/8/24.
//

import Foundation

class MergeSortedLists: Solution {
  
  typealias Input = (l1: ListNode?, l2: ListNode?)
  
  private static let defaultInput: Input = {
    let l1 = ListNode(1)
    l1.next = ListNode(2)
    l1.next?.next = ListNode(4)

    let l2 = ListNode(1)
    l2.next = ListNode(3)
    l2.next?.next = ListNode(4)
    
    return MergeSortedLists.Input(l1, l2)
  }()
  
  public class ListNode: Equatable {
    public static func == (lhs: MergeSortedLists.ListNode, rhs: MergeSortedLists.ListNode) -> Bool {
      var lhs: MergeSortedLists.ListNode? = lhs
      var rhs: MergeSortedLists.ListNode? = rhs
      while lhs != nil {
        if lhs?.val != rhs?.val {
          return false
        }
        lhs = lhs?.next
        rhs = rhs?.next
      }
      return true
    }
    
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) { self.val = val; self.next = nil; }
  }

  var title: String {
    String(describing: type(of: self))
  }
  
  var problemStatement: String {
    "Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists"
  }
  
  func mergeTwoLists_gpt(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
      let dummy = ListNode(0)
      var current: ListNode? = dummy
      var l1 = l1
      var l2 = l2
      
      while l1 != nil && l2 != nil {
          if l1!.val <= l2!.val {
              current?.next = l1
              l1 = l1?.next
          } else {
              current?.next = l2
              l2 = l2?.next
          }
          current = current?.next
      }
      
      current?.next = l1 ?? l2
      return dummy.next
  }
  
  func mergeTwoLists_my(l1: ListNode?, l2: ListNode?) -> ListNode? {
    var l1 = l1, l2 = l2
    var l: ListNode? = ListNode(0)
    var stepper: ListNode? = l
    while let l1_u = l1, let l2_u = l2 {
      if l1_u.val <= l2_u.val {
        stepper?.next = l1
        l1 = l1?.next
      } else {
        stepper?.next = l2
        l2 = l2?.next
      }
      stepper = stepper?.next
    }
    
    stepper?.next = l1 ?? l2
    return l?.next
  }
  
  func execute(input: Input) -> ListNode? {
    let mergedList = mergeTwoLists_my(l1: input.l1, l2: input.l2)
    let string = mergedList.map { node in
      var node: ListNode? = node
      var str = ""
      while node != nil {
        if let nodeUW = node {
          if str.count > 0 {
            str += " -> "
          }
          str += " \(nodeUW.val)"
          node = node?.next
        }
      }
      return str
    }
    
    print(string ?? "")
    return mergedList
  }
  
  func executeDefault() -> ListNode? {
    return execute(input: Self.defaultInput)
  }
}
