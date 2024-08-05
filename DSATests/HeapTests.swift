//
//  HeapTests.swift
//  DSATests
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import XCTest
@testable import DSA

final class HeapTests: XCTestCase {
  func test_minHeapInit() {
    // given
    let array = [2, 1, 3, 6, 4, 7]
    // when
    let heap = MinHeap(array: array)
    // then
    XCTAssertEqual(heap.array, [1, 2, 3, 4, 6, 7])
  }
}

