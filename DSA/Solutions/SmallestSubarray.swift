//
//  SmallestSubarray.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 13/8/24.
//

import Foundation

public class SmallestSubarray: Solution {

    public typealias Input = (
        array: [Int],
        target: Int
    )
    let input: Input

    public required init(input: Input) {
        self.input = input
    }

    public var problemStatement: String {
        """
          Smallest Subarray with Sum Exactly S
          [1, 2, 3, 4, 5], target 11, output 3
        """
    }

    func minSubArray_attempt(input: Input) -> Int? {
        var left = 0
        var sum = 0
        var min = input.array.count
        for right in 0..<input.array.count {
            sum += input.array[right]
            while sum > input.target {
                sum -= input.array[left]
                min = Swift.min(min, right - left + 1)
                left += 1
            }
        }
        return min
    }

    public func execute() -> Int? {
        return minSubArray_attempt(input: input)
    }
}
