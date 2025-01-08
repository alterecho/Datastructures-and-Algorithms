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
        let cases = [
            (
                input: BinaryTree<Int>(values: 1, 2, 3),
                expectedOutput: BinaryTree(values: 1, 3, 2)
            ),
            (
                input: BinaryTree<Int>(values: 1, 2, 3, 4, 5, 6, 7),
                expectedOutput: BinaryTree(values: 1, 3, 2, 7, 6, 5, 4)
            ),
        ]

        // when
        cases.forEach { input, expectedOutput in
            let invertedBinaryTree = InvertBinaryTree(input: input).execute()
            // then
            XCTAssertEqual(invertedBinaryTree, expectedOutput)
        }
    }
}
