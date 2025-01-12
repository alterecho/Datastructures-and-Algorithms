//
//  ClimbingStairs.swift
//  DSA
//
//  Created by Vijay on 1/13/25.
//

import Foundation

//70. Climbing Stairs
//Easy
//Topics
//Companies
//Hint
//
//You are climbing a staircase. It takes n steps to reach the top.
//
//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
//
// 
//
//Example 1:
//
//Input: n = 2
//Output: 2
//Explanation: There are two ways to climb to the top.
//1. 1 step + 1 step
//2. 2 steps
//
//Example 2:
//
//Input: n = 3
//Output: 3
//Explanation: There are three ways to climb to the top.
//1. 1 step + 1 step + 1 step
//2. 1 step + 2 steps
//3. 2 steps + 1 step
//
// 
//
//Constraints:
//
//    1 <= n <= 45
//

//Dynamic Programming Solution (Iterative Approach):
//
//def climbStairs(n):
//    if n == 1:
//        return 1
//    
//    # Initialize base cases
//    first = 1  # Ways to climb 1 step
//    second = 2 # Ways to climb 2 steps
//    
//    # Compute for n > 2
//    for i in range(3, n + 1):
//        current = first + second  # f(n) = f(n-1) + f(n-2)
//        first = second  # Update for next iteration
//        second = current
//    
//    return second
//
//Recursive Solution with Memoization:
//
//def climbStairs(n):
//    memo = {}
//    
//    def helper(steps):
//        if steps <= 2:
//            return steps
//        if steps not in memo:
//            memo[steps] = helper(steps - 1) + helper(steps - 2)
//        return memo[steps]
//    
//    return helper(n)
