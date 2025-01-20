//
//  dfs.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    //    Question: Implement a function to check if there is a path between two nodes in an undirected graph using DFS.
    func hasPathDFS(_ graph: [Int: [Int]], _ start: Int, _ end: Int) -> Bool {
        var visited = Set<Int>()
        
        func dfs(_ node: Int) -> Bool {
            if node == end { return true }
            if visited.contains(node) { return false }
            
            visited.insert(node)
            for neighbor in graph[node] ?? [] {
                if dfs(neighbor) { return true }
            }
            return false
        }
        
        return dfs(start)
    }
    
    //    let graph = [
    //        1: [2, 3],
    //        2: [4],
    //        3: [],
    //        4: [3]
    //    ]
    //    print(hasPathDFS(graph, 1, 3)) // Output: true
}
