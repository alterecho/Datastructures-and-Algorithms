//
//  Graphs.swift
//  DSA
//
//  Created by Vijay on 1/20/25.
//

import Foundation

extension AI {
    class Graphs {
        // Question: Implement a function to find the shortest path between two nodes in an unweighted graph using BFS.
        // Example usage:
    //        let graph = [
    //            1: [2, 3],
    //            2: [4],
    //            3: [],
    //            4: [3]
    //        ]
    //        print(shortestPathBFS(graph, 1, 3)) // Output: 2
        func shortestPathBFS(_ graph: [Int: [Int]], _ start: Int, _ end: Int) -> Int {
            var queue: [(Int, Int)] = [(start, 0)]
            var visited = Set<Int>()
            
            while !queue.isEmpty {
                let (node, distance) = queue.removeFirst()
                if node == end { return distance }
                if visited.contains(node) { continue }
                
                visited.insert(node)
                for neighbor in graph[node] ?? [] {
                    queue.append((neighbor, distance + 1))
                }
            }
            return -1 // No path found
        }
    }
    
//    Question: Find the shortest path from a source to all nodes in a weighted graph.
    // Example usage:
//    let graph = [
//        1: [(2, 4), (3, 1)],
//        2: [(4, 1)],
//        3: [(2, 2), (4, 5)],
//        4: []
//    ]
//    print(dijkstra(graph, 1)) // Output: [1: 0, 2: 3, 3: 1, 4: 4]
    func dijkstra(_ graph: [Int: [(Int, Int)]], _ source: Int) -> [Int: Int] {
        var distances = [Int: Int]()
        var priorityQueue = [(node: Int, cost: Int)]()
        
        for node in graph.keys {
            distances[node] = Int.max
        }
        distances[source] = 0
        priorityQueue.append((node: source, cost: 0))
        
        while !priorityQueue.isEmpty {
            priorityQueue.sort { $0.cost < $1.cost }
            let (currentNode, currentCost) = priorityQueue.removeFirst()
            
            guard let neighbors = graph[currentNode] else { continue }
            
            for (neighbor, weight) in neighbors {
                let newCost = currentCost + weight
                if newCost < distances[neighbor]! {
                    distances[neighbor] = newCost
                    priorityQueue.append((node: neighbor, cost: newCost))
                }
            }
        }
        return distances
    }

//    Question: Perform a topological sort on a directed acyclic graph (DAG).
    //    // Example usage:
    //    let graph = [
    //        1: [2, 3],
    //        2: [4],
    //        3: [4],
    //        4: []
    //    ]
    //    print(topologicalSort(graph)) // Output: [1, 2, 3, 4]
    func topologicalSort(_ graph: [Int: [Int]]) -> [Int] {
        var inDegree = [Int: Int]()
        var queue = [Int]()
        var result = [Int]()
        
        for node in graph.keys {
            inDegree[node] = 0
        }
        
        for neighbors in graph.values {
            for neighbor in neighbors {
                inDegree[neighbor, default: 0] += 1
            }
        }
        
        for (node, degree) in inDegree where degree == 0 {
            queue.append(node)
        }
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            result.append(node)
            
            for neighbor in graph[node] ?? [] {
                inDegree[neighbor]! -= 1
                if inDegree[neighbor] == 0 {
                    queue.append(neighbor)
                }
            }
        }
        return result
    }
}
