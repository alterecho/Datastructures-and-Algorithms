//
//  ReverseString.swift
//  DSA
//
//  Created by Vijay on 1/12/25.
//

import Foundation

//344. Reverse String
//
//Write a function that reverses a string. The input string is given as an array of characters s.
//
//You must do this by modifying the input array in-place with O(1) extra memory.
//
// 
//
//Example 1:
//
//Input: s = ["h","e","l","l","o"]
//Output: ["o","l","l","e","h"]
//
//Example 2:
//
//Input: s = ["H","a","n","n","a","h"]
//Output: ["h","a","n","n","a","H"]
//
// 
//
//Constraints:
//
//    1 <= s.length <= 105
//    s[i] is a printable ascii character.
//

//def reverseString(s):
//    left, right = 0, len(s) - 1
//    while left < right:
//        # Swap characters at left and right pointers
//        s[left], s[right] = s[right], s[left]
//        # Move pointers towards the center
//        left += 1
//        right -= 1
//            
//            Time Complexity:
//
//                Time Complexity: O(n)O(n), where n is the length of the array, since we only iterate through half of the array.
//                Space Complexity: O(1)O(1), since we are using only a constant amount of extra space (just the two pointers).
