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
  func test_quickSort() {
    // given
    // when
    var sortedElements = QuickSort(elements: [2, 5, 6, 0, -1, -5]).elements
    // then
    XCTAssertEqual(sortedElements, [-5, -1, 0, 2, 5, 6])
    // when
    sortedElements = QuickSort(elements: [0]).elements
    // then
    XCTAssertEqual(sortedElements, [0])
    // when
    sortedElements = QuickSort(elements: []).elements
    // then
    XCTAssertEqual(sortedElements, [])

  }
}
