//
//  AdjacencyMatrixGraph.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

struct AdjacencyListGraph<Vertex: Comparable & Hashable>: Graph {
  private var adjList = [[Vertex]]()
  private var vertexIndices = [Vertex : Int]()
  private var indexVertices = [Int: Vertex]()

  var description: String {
    return adjList.reduce("") { partialResult, array in
      partialResult + array.reduce("\n") { partialResult, vertex in
        var partialResult = partialResult
        if partialResult.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false {
          partialResult += "->"
        }
        partialResult += "\(vertex)"
        return partialResult
      }
    }
  }

  mutating func addIfNotPresent(vertex: Vertex) {
    guard vertexIndices[vertex] == nil else {
      return
    }
    
    adjList.append([vertex])
    let index = adjList.count - 1
    vertexIndices[vertex] = index
    indexVertices[index] = vertex
  }
  
  mutating func add(edge: (Vertex, Vertex)) {
    addIfNotPresent(vertex: edge.0)
    addIfNotPresent(vertex: edge.1)
        
    if let index = vertexIndices[edge.0] {
      adjList[index].append(edge.1)
    }
    
    if let index = vertexIndices[edge.0] {
      adjList[index].append(edge.1)
    }
  }

  func dfs(vertex: Vertex, visited: inout [Vertex]) {
    guard let index = vertexIndices[vertex] else {
      return
    }
    
    guard visited.contains(vertex) == false else {
      return
    }
    
    visited.append(vertex)
    print("visited: \(vertex)")
    
    for vertex in adjList[index] {
      dfs(vertex: vertex, visited: &visited)
    }
  }
}
