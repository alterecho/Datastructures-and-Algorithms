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
    let output = TwoSum(
      input: (array: [2, 7, 11, 15], target: 9)
    ).execute()
    
    XCTAssertEqual(output?.0, 0)
    XCTAssertEqual(output?.1, 1)
  }
  
  func test_longestSubString() {
    XCTAssertEqual(
      LongestSubstring(input: "abcabcbb").execute(),
      3
    )
  }

  func test_mergeSortedLists() {
    let l1 = LinkedList(1, 2, 4)

    let l2 = LinkedList(1, 3, 4)
    
    let expected = LinkedList(1, 1, 2, 3, 4, 4)

    XCTAssertEqual(
      MergeSortedLists(input: (l1, l2)).execute(),
      expected
    )
  }

  func test_validParanthesis() {
    XCTAssertEqual(
      ValidParentheses(input: "()[]{}").execute(),
      true
    )

  }

  func test_maxSubArray() {
    XCTAssertEqual(
      MaxSubArray(input: [-2, 1, -3, 4, -1, 2, 1, -5, 4]).execute(),
      6
    )
  }                     
  
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
        Fibonacci(input: input).execute(),
        expectedOutput
      )
    }
  }
  
  func test_amazonInterviewQ1() {
    let expectations = [(
      input: (word: "abbacc", a: -1, b: 2),
      expectedOutput: 5
    )]
    
    expectations.forEach { input, expectedOutput in
      XCTAssertEqual(
        AmazonInterviewQ1(input: input).execute(),
        expectedOutput
      )
    }
  }
  
  func test_amazonInterviewQ2() {
    let expectations = [(
      input:(server_states: "11101010110011", k: 2),
      expectedOutput:8
    )]
    
    expectations.forEach { input, expectedOutput in
      XCTAssertEqual(
        AmazonInterviewQ2(input: input).execute(),
        expectedOutput
      )
    }
  }
  
  func test_reverseLinkedList() {
    let expectations = [(
      input: LinkedList(1, 2, 3, 4),
      expectedOutput: LinkedList(4, 3, 2, 1)
    )]
    
    
    expectations.forEach { input, expectedOutput in
      XCTAssertEqual(
        ReverseLinkedList(input: input).execute()!,
        expectedOutput
      )
    }
  }
}
