//
//  AdjacencyMatrixGraph.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

struct AdjacencyListGraph<Vertex: Comparable & Hashable>: Graph {
  private var adjList = [[Vertex]]()
  private var vertexIndexMap = [Vertex : Int]()
  private var indexVertexMap = [Int: Vertex]()

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
    guard vertexIndexMap[vertex] == nil else {
      return
    }
    
    adjList.append([vertex])
    let index = adjList.count - 1
      vertexIndexMap[vertex] = index
      indexVertexMap[index] = vertex
  }
  
  mutating func add(edge: (Vertex, Vertex)) {
    addIfNotPresent(vertex: edge.0)
    addIfNotPresent(vertex: edge.1)
        
    if let index = vertexIndexMap[edge.0] {
      adjList[index].append(edge.1)
    }
    
    if let index = vertexIndexMap[edge.1] {
      adjList[index].append(edge.0)
    }
  }

  func dfs(vertex: Vertex, visited: inout [Vertex]) {
      guard let index = vertexIndexMap[vertex] else {
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
