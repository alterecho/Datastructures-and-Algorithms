//
//  HeapTests.swift
//  DSATests
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import XCTest
@testable import DSA

final class HeapTests: XCTestCase {
  typealias Expectation = (input: [Int], expectedOutput: [Int])
  func test_minHeapInit() {
    // given
    let dataSet: [Expectation] = [
      (input: [2, 1, 3, 6, 4, 7], expectedOutput: [1, 2, 3, 6, 4, 7]),
      (input: [4, 10, 3, 5, 1], expectedOutput: [1, 4, 3, 5, 10])
    ]
    // when
    dataSet.forEach { input, expectedOutput in
      // then
//      let heap = MinHeap(array: input)
//      XCTAssertEqual(heap.array, expectedOutput)
    }
  }
}

