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
      let heap = MinHeap(array: input)
      XCTAssertEqual(heap.array, expectedOutput)
    }
  }
    
    func test_maxHeap_heapify() {
        // given
        let inputs = [
            [3, 1, 4, 1, 5, 9, 2]
        ]
        // when
        inputs.forEach { input in
            // then
            let heap = MaxHeap(array: input)
            XCTAssertTrue(isValidMaxHeap(heap))
        }
    }
    
    private func isValidMaxHeap(_ heap: MaxHeap<Int>) -> Bool {
        for i_parent in 0..<heap.array.count {
            let i_left = 2 * i_parent + 1
            let i_right = 2 * i_parent + 2
            
            if i_right < heap.array.count && heap.array[i_parent] < heap.array[i_right] {
                return false
            }
            if i_left < heap.array.count && heap.array[i_parent] < heap.array[i_left] {
                
                return false
            }
        }
        return true
    }
    
    func testMaxHeap_insert_isValid() {
        // given
        let input = [3, 1, 4, 1, 5, 9, 2]
        let itemToInsert = 6
        // when
        var maxHeap = MaxHeap(array: input)
        maxHeap.insert(itemToInsert)
        // then
        XCTAssertTrue(isValidMaxHeap(maxHeap))
        XCTAssertTrue(maxHeap.array.contains(6))
    }
    
    func testMaxHeap_extract_isValid() {
        // given
        let max_first = 9
        let max_second = 5
        let input = [3, 1, 4, 1, max_second, max_first, 2]
        
        // when
        var maxHeap = MaxHeap(array: input)
        let firstExtractedItem = maxHeap.extract()
        let secondExtractedItem = maxHeap.extract()
        
        // then
        XCTAssertEqual(firstExtractedItem, max_first)
        XCTAssertEqual(secondExtractedItem, max_second)
        XCTAssertEqual(maxHeap.array.count, input.count - 2)
    }
}

