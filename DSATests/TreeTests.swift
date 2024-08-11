//
//  TreeTests.swift
//  DSATests
//
//  Created by Vijaychandran Jayachandran on 11/8/24.
//

import XCTest
@testable import DSA

final class TreeTests: XCTestCase {
  typealias Expectation = (input: [Int], expectedOutput: [Int])
  func test_invertBinaryTree() throws {
    // given
    let binaryTree = BinaryTree<Int>(values: 1, 2, 3)
//
//    // when
//    let invertedBinaryTree = try TreeOperations.invert(binaryTree: binaryTree)
//    let expectedInvertedBinaryTree = BinaryTree(values: 3, 2, 1)
//    
//    // then
//    XCTAssertEqual(invertedBinaryTree, expectedInvertedBinaryTree)
  }
}

