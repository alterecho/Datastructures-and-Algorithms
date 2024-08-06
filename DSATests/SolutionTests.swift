//
//  DSATests.swift
//  DSATests
//
//  Created by Vijaychandran Jayachandran on 4/8/24.
//

import XCTest
@testable import DSA

final class SolutionTests: XCTestCase {

  func test_twoSum() {
    let solution = TwoSum()
    let input = (array: [2, 7, 11, 15], target: 9)
    let output = solution.execute(input: input)
    XCTAssertEqual(output?.0, 0)
    XCTAssertEqual(output?.1, 1)
  }
  
  func test_longestSubString() {
    let solution = LongestSubstring()
    let output = solution.execute(input: "abcabcbb")
    XCTAssertEqual(output, 3)
  }

  func test_mergeSortedLists() {
    let l1 = MergeSortedLists.ListNode(1)
    l1.next = MergeSortedLists.ListNode(2)
    l1.next?.next = MergeSortedLists.ListNode(4)

    let l2 = MergeSortedLists.ListNode(1)
    l2.next = MergeSortedLists.ListNode(3)
    l2.next?.next = MergeSortedLists.ListNode(4)
    
    let expected = MergeSortedLists.ListNode(1)
    expected.next = MergeSortedLists.ListNode(1)
    expected.next?.next = MergeSortedLists.ListNode(2)
    expected.next?.next?.next = MergeSortedLists.ListNode(3)
    expected.next?.next?.next?.next = MergeSortedLists.ListNode(4)
    expected.next?.next?.next?.next?.next = MergeSortedLists.ListNode(4)


    let solution = MergeSortedLists()
    let output = solution.execute(input: (l1, l2))
    XCTAssertEqual(output, expected)
  }

  func test_validParanthesis() {
    let solution = ValidParentheses()
    let output = solution.execute(input: "()[]{}")
    XCTAssertEqual(output, true)

  }

  func test_maxSubArray() {
    let solution = MaxSubArray()
    let output = solution.execute(input: [-2, 1, -3, 4, -1, 2, 1, -5, 4])
    XCTAssertEqual(output, 6)

  }
//  1 + 1 = 2
//      1 + 2 = 3
//          2 + 3 = 5
//              3 + 5 = 8
                     
  
  func test_fibonacci() {
    let expectations: [
      (input: Int, expectedOutput: Int)
    ] = zip(
      [0, 1, 2, 3, 4, 5, 6, 7],
      [0, 1, 1, 2, 3, 5, 8, 13]
    ).map { zippedElement in
      (input: zippedElement.0,
       expectedOutput: zippedElement.1)
    }
    
    expectations.forEach { input, expectedOutput in
      XCTAssertEqual(
        Fibonacci().execute(
          input: input
        ),
        expectedOutput
      )
    }
  }
}
