//
//  Strings.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    
    class Strings {
        //Question: Check if two strings are anagrams of each other.
        func areAnagrams(_ s1: String, _ s2: String) -> Bool {
            return s1.sorted() == s2.sorted()
        }

        // Example usage:
        //print(areAnagrams("listen", "silent")) // Output: true

    }
    
//    Question: Find the longest palindromic substring in a given string.
    // Example usage:
//    print(longestPalindrome("babad")) // Output: "bab" or "aba"

    func longestPalindrome(_ s: String) -> String {
        let chars = Array(s)
        var start = 0, maxLength = 0
        
        func expandAroundCenter(_ left: Int, _ right: Int) {
            var l = left, r = right
            while l >= 0 && r < chars.count && chars[l] == chars[r] {
                l -= 1
                r += 1
            }
            let length = r - l - 1
            if length > maxLength {
                maxLength = length
                start = l + 1
            }
        }
        
        for i in 0..<chars.count {
            expandAroundCenter(i, i)       // Odd-length palindromes
            expandAroundCenter(i, i + 1)  // Even-length palindromes
        }
        return String(chars[start..<start + maxLength])
    }
}
