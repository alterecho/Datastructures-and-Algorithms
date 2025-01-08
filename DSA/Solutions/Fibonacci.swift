//
//  Fibonacci.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 6/8/24.
//

import Foundation

/*
 F(n)=F(n−1)+F(n−2)F(n)=F(n−1)+F(n−2) for n≥2n≥2
 1 + 1 = 2
         2 + 1 = 3
                 3 + 2 = 5
                         5 + 3 = 8
                                 8 + 5 = 13
*/
public class Fibonacci: Solution {
    public var problemStatement: String {
        return "Fibonacci"
    }

    private let input: Int

    public required init(input: Int = 3) {
        self.input = input
    }

    private func fibonacci_recursive(count: Int) -> Int {
        guard count > 1 else {
            return count
        }
        return fibonacci_recursive(
            count: count - 1
        )
            + fibonacci_recursive(
                count: count - 2
            )
    }

    //  0 + 1 = 1 + 1 = 2 + 1 = 3 + 2 = 5 + 3 = 8 + 5 = 13
    private func fibonacci_dynamic(count: Int) -> Int {
        guard count > 1 else {
            return count
        }

        var a = 0
        var b = 1
        (1..<count).forEach { _ in
            let b_prev = b
            b = b + a
            a = b_prev

        }
        return b
    }

    @discardableResult
    public func execute() -> Int? {
        return fibonacci_dynamic(
            count: input
        )
    }
}
