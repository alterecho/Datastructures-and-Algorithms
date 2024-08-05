//
//  SortAlgorithmTests.swift
//  DSATests
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

import XCTest
@testable import DSA

final class SortAlgorithmTests: XCTestCase {
  typealias Expectation = (input: [Int], expectedOutput: [Int])
  private var dataSet: [Expectation]!
  
  override func setUp() {
    super.setUp()
    dataSet = [
      (input: [1, -1],
       expectedOutput: [-1, 1]),
      (input: [0, -1, 1],
       expectedOutput: [-1, 0, 1]),
      (input: [2, 5, 6, 0, -1, -5],
       expectedOutput: [-5, -1, 0, 2, 5, 6]),
      (input: [0],
       expectedOutput: [0]),
      (input: [],
       expectedOutput: [])
    ]
  }
  
  override func tearDown() {
    super.tearDown()
    dataSet = nil
  }
  
  func test_quickSort() {
    // given
    // when
    dataSet.forEach { expectation in
      // then
      XCTAssertEqual(
        QuickSort(elements: expectation.input).elements,
        expectation.expectedOutput
      )
    }
  }
  
  func test_mergeSort() {
    // given
    // when
    dataSet.forEach { expectation in
      // then
      XCTAssertEqual(
        MergeSort(elements: expectation.input).elements,
        expectation.expectedOutput
      )
    }
  }
  
  func test_bubbleSort() {
    // given
    // when
    dataSet.forEach { expectation in
      // then
      XCTAssertEqual(
        BubbleSort(elements: expectation.input).elements,
        expectation.expectedOutput
      )
    }
  }
}
