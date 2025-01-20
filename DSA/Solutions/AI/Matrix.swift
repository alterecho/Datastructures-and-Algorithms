//
//  Matrix.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    class Matrix {
        //    // Example usage:
        //    var matrix = [
        //        [1, 2, 3],
        //        [4, 5, 6],
        //        [7, 8, 9]
        //    ]
        //    rotateMatrix(&matrix)
        //    print(matrix)
        //    // Output: [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
        func rotateMatrix(_ matrix: inout [[Int]]) {
            let n = matrix.count
            for i in 0..<n {
                for j in i..<n {
                    (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
                }
            }
            for i in 0..<n {
                matrix[i].reverse()
            }
        }
    }
    
//    Question: Count the number of islands in a 2D grid. An island is surrounded by water and formed by connecting adjacent land cells.
    // Example usage:
//    let grid: [[Character]] = [
//        ["1", "1", "0", "0", "0"],
//        ["1", "1", "0", "0", "0"],
//        ["0", "0", "1", "0", "0"],
//        ["0", "0", "0", "1", "1"]
//    ]
//    print(numIslands(grid)) // Output: 3

    func numIslands(_ grid: [[Character]]) -> Int {
        guard !grid.isEmpty else { return 0 }
        var grid = grid
        let rows = grid.count
        let cols = grid[0].count
        var count = 0
        
        func dfs(_ row: Int, _ col: Int) {
            if row < 0 || row >= rows || col < 0 || col >= cols || grid[row][col] == "0" {
                return
            }
            grid[row][col] = "0" // Mark cell as visited
            dfs(row + 1, col)
            dfs(row - 1, col)
            dfs(row, col + 1)
            dfs(row, col - 1)
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == "1" {
                    count += 1
                    dfs(i, j)
                }
            }
        }
        return count
    }
}
