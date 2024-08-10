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
    let binaryTree = BinaryTree(root: BinaryTree.Node(1))
    
    // when
    let invertedBinaryTree = try TreeOperations.invert(binaryTree: binaryTree)
    
    // then
    XCTAssertEqual(invertedBinaryTree, expectedInvertedBinaryTree)
  }
}

