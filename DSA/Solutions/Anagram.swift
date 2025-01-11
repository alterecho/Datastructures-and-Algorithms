//
//  Anagram.swift
//  DSA
//
//  Created by Vijay on 1/11/25.
//

import Foundation

private let Q = """
    Given two strings s and t, return true if t is an
    anagram
    of s, and false otherwise.

    Example 1:
    Input: s = "anagram", t = "nagaram"
    Output: true

    Example 2:
        Input: s = "rat", t = "car"
        Output: false

    Constraints:
        1 <= s.length, t.length <= 5 * 104
        s and t consist of lowercase English letters.
    """

class Anagram: Solution {
    var problemStatement = Q
    typealias Input = (s :String, t: String)
    let input: Input
    
    required init(input: Input) {
        self.input = input
    }
    
    func execute() -> Bool? {
        var s_map = input.s.reduce([Character : Int]()) { partialResult, character in
            var newPartialResult = partialResult
            newPartialResult[character] = (partialResult[character] ?? 0) + 1
            return newPartialResult
        }
        
        for character in input.t {
            guard s_map[character] != nil else { return false }
            s_map[character] = (s_map[character] ?? 1) - 1
            if s_map[character] == 0 {
                s_map.removeValue(forKey: character)
            }
        }
                
        return s_map.isEmpty
    }
}
