//
//  StockBuySell.swift
//  DSA
//
//  Created by Vijay on 1/11/25.
//

import Foundation

let question: String =
    """
    You are given an array prices where prices[i] is the price of a given stock on the ith day.
    You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
    Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

    Example 1:

    Input: prices = [7,1,5,3,6,4]
    Output: 5
    Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
    Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

    Example 2:

    Input: prices = [7,6,4,3,1]
    Output: 0
    Explanation: In this case, no transactions are done and the max profit = 0.         

    Constraints:

        1 <= prices.length <= 105
        0 <= prices[i] <= 104
    """

public class StockBuySell: Solution {
    public var title: String = "Stock Buy Sell"

    private let input: [Int]
    public var problemStatement: String = question

    public required init(input: [Int]) {
        self.input = input
    }

    public func execute() -> Int? {
        var maxProfit = 0
        for left in stride(from: 0, through: input.count - 1, by: 1) {
            for right in stride(from: left + 1, through: input.count - 1, by: 1) {
                maxProfit = max(maxProfit, input[right] - input[left])
            }
            print(maxProfit)
        }
        return maxProfit
    }

}
