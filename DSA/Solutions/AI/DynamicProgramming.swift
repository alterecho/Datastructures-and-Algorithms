//
//  DynamicProgramming.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    extension Dynamic {
        // Question: Write a function to compute the nth Fibonacci number using Dynamic Programming.
        // Example usage:
        //    print(fibonacci(10)) // Output: 55
        func fibonacci(_ n: Int) -> Int {
            guard n > 1 else { return n }
            
            var dp = [0, 1]
            for i in 2...n {
                dp.append(dp[i - 1] + dp[i - 2])
            }
            return dp[n]
        }
                
//        Question: Solve the 0/1 Knapsack Problem.
//        Given N items where each item has some weight and profit associated with it and also given a bag with capacity W, [i.e., the bag can hold at most W weight in it]. The task is to put the items into the bag such that the sum of profits associated with them is the maximum possible.
//    
//        Note: The constraint here is we can either put an item completely into the bag or cannot put it at all [It is not possible to put a part of an item into the bag].
//            Input: N = 3, W = 4, profit[] = {1, 2, 3}, weight[] = {4, 5, 1}
//            Output: 3
//            Explanation: There are two items which have weight less than or equal to 4. If we select the item with weight 4, the possible profit is 1. And if we select the item with weight 1, the possible profit is 3. So the maximum possible profit is 3. Note that we cannot put both the items with weight 4 and 1 together as the capacity of the bag is 4.
//        
//            Input: N = 3, W = 3, profit[] = {1, 2, 3}, weight[] = {4, 5, 6}
//            Output: 0
        //    // Example usage:
        //    let weights = [1, 3, 4, 5]
        //    let values = [1, 4, 5, 7]
        //    let capacity = 7
        //    print(knapsack(weights, values, capacity)) // Output: 9

        func knapsack(_ weights: [Int], _ values: [Int], _ capacity: Int) -> Int {
            let n = weights.count
            var dp = Array(repeating: Array(repeating: 0, count: capacity + 1), count: n + 1)
            
            for i in 1...n {
                for w in 0...capacity {
                    if weights[i - 1] <= w {
                        dp[i][w] = max(dp[i - 1][w], dp[i - 1][w - weights[i - 1]] + values[i - 1])
                    } else {
                        dp[i][w] = dp[i - 1][w]
                    }
                }
            }
            return dp[n][capacity]
        }
    }
    
//    Question: Determine if there exists a subset in the array that sums up to a given target.
    // Example usage:
//    let nums = [2, 3, 7, 8, 10]
//    let target = 11
//    print(subsetSum(nums, target)) // Output: true

    func subsetSum(_ nums: [Int], _ target: Int) -> Bool {
        var dp = Array(repeating: false, count: target + 1)
        dp[0] = true // Base case: sum of 0 is always possible.
        
        for num in nums {
            for t in stride(from: target, through: num, by: -1) {
                dp[t] = dp[t] || dp[t - num]
            }
        }
        return dp[target]
    }
    
//    Question: Find the length of the longest increasing subsequence in an array.
    // Example usage:
//    let nums = [10, 9, 2, 5, 3, 7, 101, 18]
//    print(lengthOfLIS(nums)) // Output: 4
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
        }
        return dp.max() ?? 0
    }

}
