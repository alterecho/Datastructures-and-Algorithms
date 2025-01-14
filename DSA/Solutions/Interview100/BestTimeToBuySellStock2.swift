//
//  BestTimeToBuySellStock2.swift
//  DSA
//
//  Created by Vijay on 1/14/25.
//

import Foundation

private let Q = """
//122. Best Time to Buy and Sell Stock II
//Medium
//Topics
//Companies
//
//You are given an integer array prices where prices[i] is the price of a given stock on the ith day.
//
//On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.
//
//Find and return the maximum profit you can achieve.
//
// 
//
//Example 1:
//
//Input: prices = [7,1,5,3,6,4]
//Output: 7
//Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
//Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
//Total profit is 4 + 3 = 7.
//
//Example 2:
//
//Input: prices = [1,2,3,4,5]
//Output: 4
//Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
//Total profit is 4.
//
//Example 3:
//
//Input: prices = [7,6,4,3,1]
//Output: 0
//Explanation: There is no way to make a positive profit, so we never buy the stock to achieve the maximum profit of 0.
//
// 
//
//Constraints:
//
//    1 <= prices.length <= 3 * 104
//    0 <= prices[i] <= 104
//
// SOLUTION
// To maximize profit, we'll iterate through the prices and buy the stock whenever t price is lower than the next day's price. Then, we'll sell it the next day.
// This strategy works because we can buy and sell on the same day. We're essentially capturing all the price increases in the array.
// We'll keep a running total of our profit. For each day, if the price is higher than th previous day, we add the difference to our profit.
// The time complexity of this solution is O(n), where n is the length of the prices array.
// •
// •
// def maxProfit(self, prices: List[int) →> int:
// profit = 0
// for i in range(1, len(prices) ):
// # If price is higher than previous day
// if prices[il › prices[i-1]:
// # Add the price difference to profit
// profit += prices[il - prices i-11
// return profit
"""

class BestTimeToBuySellStock2: Solution {
    let problemStatement: String = Q
    private let input: [Int]
    
    required init(input: [Int]) {
        self.input = input
    }
    
    func execute() -> Int? {
        guard input.isEmpty == false else { return nil }
        guard input.count > 1 else { return 0 }
        
        var profit = 0
        for i in 1..<input.count {
            let currentDayPrice = input[i]
            let previousDayPrice = input[i - 1]
            profit += currentDayPrice > previousDayPrice ? currentDayPrice - previousDayPrice : 0
        }
        return profit
    }
}
