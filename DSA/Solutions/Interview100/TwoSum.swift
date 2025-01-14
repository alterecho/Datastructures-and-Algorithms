//
//  TwoSumProblem.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 1/8/24.
//

import Foundation

public class TwoSum: Solution {
    private let input: Input

    public required init(
        input: (array: [Int], target: Int) = (array: [2, 7, 11, 15], target: 9)
    ) {
        self.input = input
    }

    public typealias Input = (
        array: [Int],
        target: Int
    )

    public typealias Output = (Int, Int)

    public var problemStatement: String {
        return
            "Given an array of integers nums and an integer target, return the indices of the two numbers such that they add up to target."
    }

    @discardableResult
    public func execute() -> Output? {
        var result: (Int, Int)?
        var map = [Int: Int]()
        for (index, num) in input.array.enumerated() {
            if let index2nd = map[input.target - num] {
                result = (index2nd, index)
                break
            }
            map[num] = index
        }
        print(String(describing: result))
        return result

    }
}
