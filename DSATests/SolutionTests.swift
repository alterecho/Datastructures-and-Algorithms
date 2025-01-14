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

    func test_maxSubArray2nd() {
        XCTAssertEqual(
            MaxSubArray2nd(input: (array: [1, 2, 3, 4, 5], windowSize: 3))
                .execute(),
            12
        )
    }

    func test_smallestSubArray() {
        XCTAssertEqual(
            SmallestSubarray(
                input: (
                    array: [1, 2, 3, 4, 5],
                    target: 11
                )
            ).execute(),
            3
        )
    }

    func test_fibonacci() {
        let expectations: [(input: Int, expectedOutput: Int)] = zip(
            [0, 1, 2, 3, 4, 5, 6, 7],
            [0, 1, 1, 2, 3, 5, 8, 13]
        ).map { zippedElement in
            (
                input: zippedElement.0,
                expectedOutput: zippedElement.1
            )
        }

        expectations.forEach { input, expectedOutput in
            XCTAssertEqual(
                Fibonacci(input: input).execute(),
                expectedOutput
            )
        }
    }

    func test_amazonInterviewQ1() {
        let expectations = [
            (
                input: (word: "abbacc", a: -1, b: 2),
                expectedOutput: 5
            )
        ]

        expectations.forEach { input, expectedOutput in
            XCTAssertEqual(
                AmazonInterviewQ1(input: input).execute(),
                expectedOutput
            )
        }
    }

    func test_amazonInterviewQ2() {
        let expectations = [
            (
                input: (server_states: "11101010110011", k: 2),
                expectedOutput: 8
            )
        ]

        expectations.forEach { input, expectedOutput in
            XCTAssertEqual(
                AmazonInterviewQ2(input: input).execute(),
                expectedOutput
            )
        }
    }

    func test_reverseLinkedList() {
        let expectations = [
            (
                input: LinkedList(1, 2, 3, 4),
                expectedOutput: LinkedList(4, 3, 2, 1)
            )
        ]

        expectations.forEach { input, expectedOutput in
            XCTAssertEqual(
                ReverseLinkedList(input: input).execute()!,
                expectedOutput
            )
        }
    }

    func testStockBuySell_isValid() {
        // given
        let expectations = [
            (input: [7, 1, 5, 3, 6, 4], expectedOutput: 5),
            (input: [7, 6, 4, 3, 1], expectedOutput: 0),
        ]
        // when
        expectations.forEach { expectation in
            let result = StockBuySell(input: expectation.input).execute()
            // then
            XCTAssertEqual(result, expectation.expectedOutput)
        }
    }

    func testPalindrome_isVaild() {
        // given
        let expectations = [
            (input: "A man, a plan, a canal: Panama", output: true),
            (input: "race a car", output: false),
        ]
        // when
        expectations.forEach { expectation in
            let isPalindrome = Palindrome(input: expectation.input).execute()
            // then
            XCTAssertEqual(isPalindrome, expectation.output)
        }
    }

    func testAnagram_isValid() {
        // given
        let expectations = [
            (input: Anagram.Input(s: "anagram", t: "nagaram"), output: true)
            //            (input: Anagram.Input(s: "rat", t: "car"), output: false)
        ]
        // when
        expectations.forEach { expectation in
            let isAnagram = Anagram(input: expectation.input).execute()
            XCTAssertEqual(isAnagram, expectation.output)
        }
        // then
    }

    func testBinarySearch_isValid() {
        // given
        let expectations = [
            (array: [-1, 0, 3, 5, 9, 12], target: 9, output: 4),
            (array: [-1, 0, 3, 5, 9, 12], target: 2, output: -1),
        ]
        expectations.forEach { input in
            let result = BinarySearchSolution(
                input: (num: input.target, array: input.array)
            ).execute()
            // then
            XCTAssertEqual(result, input.output)
        }
    }

    func testMaxDepthOfBinaryTree_isValid() {
        let expectations = [
            (input: [3, 9, 20, nil, nil, 15, 7], output: 3),
            (input: [1, nil, 2], output: 2),
        ]
        // when
        expectations.forEach { expectation in
            let result = MaxDepthOfBinaryTree(input: expectation.input)
                .execute()
            //then
            XCTAssertEqual(result, expectation.output)
        }
    }
    
    //
    //Input: nums =
    //Output: [24,12,8,6]
    //
    //Example 2:
    //
    //Input: nums =
    //Output:

    func testProductOfArrayExceptSelf_isValid() {
        // given
        let expectations = [
            (input: [1, 2, 3, 4], output: [24, 12, 8, 6]),
            (input: [-1,1,0,-3,3], output: [0,0,9,0,0])
        ]
        
        // when
        expectations.forEach { expectation in
            let result = ProductOfArrayExceptSelf(input: expectation.input).execute()
            XCTAssertEqual(result, expectation.output)
        }
        // then
    }
}
