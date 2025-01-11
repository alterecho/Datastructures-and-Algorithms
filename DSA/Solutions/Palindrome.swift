//
//  Palindrome.swift
//  DSA
//
//  Created by Vijay on 1/11/25.
//

import Foundation

private let Q = """
    A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

    Given a string s, return true if it is a palindrome, or false otherwise.

     

    Example 1:

    Input: s = "A man, a plan, a canal: Panama"
    Output: true
    Explanation: "amanaplanacanalpanama" is a palindrome.

    Example 2:

    Input: s = "race a car"
    Output: false
    Explanation: "raceacar" is not a palindrome.

    Example 3:

    Input: s = " "
    Output: true
    Explanation: s is an empty string "" after removing non-alphanumeric characters.
    Since an empty string reads the same forward and backward, it is a palindrome.

     

    Constraints:

        1 <= s.length <= 2 * 105
        s consists only of printable ASCII characters.

    """

class Palindrome: Solution {
    var title: String = "Palindrome"
    var problemStatement: String = Q
    let input: String

    required init(input: String) {
        self.input = input
    }

    private func isPalinfrome(_ string: String) -> Bool {
        //        return string == String(string.reversed())
        for leftIndex in stride(from: 0, to: string.count - 1, by: 1) {
            let rightIndex = string.count - leftIndex - 1
            let leftStringIndex = string.index(string.startIndex, offsetBy: leftIndex)
            let rightStringIndex = string.index(string.startIndex, offsetBy: rightIndex)
            if string[leftStringIndex] != string[rightStringIndex] {
                return false
            }
        }
        return true
    }
    func execute() -> Bool? {
        let processedString =
            input
            .replacingOccurrences(
                of: "[^a-zA-Z0-9]", with: "", options: .regularExpression
            )
            .lowercased()

        let result = isPalinfrome(processedString)
        return result
    }
}
