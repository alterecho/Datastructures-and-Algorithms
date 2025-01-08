//
//  AlgorithmTests.swift
//  DSATests
//
//  Created by Vijaychandran Jayachandran on 4/8/24.
//

import XCTest

@testable import DSA

final class SearchAlgorithmTests: XCTestCase {
    func test_binarySearch() {
        // given
        let elements = [1, 2, 3, 6, 7]
        // when
        let bs = BinarySearch(elements: elements)
        // then
        XCTAssertEqual(bs.find(1), 0)
        XCTAssertEqual(bs.find(2), 1)
        XCTAssertEqual(bs.find(3), 2)
        XCTAssertEqual(bs.find(6), 3)
        XCTAssertEqual(bs.find(7), 4)
        XCTAssertEqual(bs.find(10), nil)
    }
}
