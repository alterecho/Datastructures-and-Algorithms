//
//  Graph.swift
//  algo
//
//  Created by Vijaychandran Jayachandran on 28/7/24.
//

import Foundation

protocol Graph: CustomStringConvertible {
  associatedtype Vertex: Comparable, Hashable
  mutating func add(edge: (Vertex, Vertex))
//  func dfs(root: Vertex)
}

struct AdjacencyMatrixGraph<Vertex: Comparable & Hashable>: Graph {
  var description: String {
    let red = matrix.enumerated().reduce(("", "")) { partialResult, iterator_i in
      
      let vertex_i = indexVertexMap[iterator_i.offset]
      
      let string_i: String = {
        if let vertex_i = vertex_i {
          return String(describing: vertex_i)
        }
        return "?"
      }()
      let headingString = partialResult.0 + " \(string_i)"
      let sub = iterator_i
        .element
        .reduce("\n\(string_i)") { partialResult,
          boolValue in
        return partialResult + " \(boolValue ? 1 : 0)"
      }
      return (headingString, partialResult.1 + sub)
    }
    
    return " \(red.0)\(red.1)"
  }
    
  var matrix: [[Bool]]
  let vertexIndexMap: [Vertex : Int]
  let indexVertexMap: [Int : Vertex]
  
  init(vertices: [Vertex]) {
    matrix = Array(
      repeating: Array(
        repeating: false,
        count: vertices.count),
      count: vertices.count
    )
    
    vertexIndexMap = Dictionary(
      uniqueKeysWithValues: vertices.enumerated().map {
        ($0.element, $0.offset)
      }
    )
    
    indexVertexMap = Dictionary(
      uniqueKeysWithValues: vertexIndexMap.map {
        ($0.value, $0.key)
      }
    )
  }
  
  mutating func add(edge: (Vertex, Vertex)) {
    guard let first = vertexIndexMap[edge.0],
          let second = vertexIndexMap[edge.1] else {
      return
    }
    
    matrix[first][second] = true
    matrix[second][first] = true
  }
  
  func dfs(root: Vertex, visited: [Vertex]) {
  }
}

struct AdjacencyListGraph<Vertex: Comparable & Hashable>: Graph {
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
  
  private var adjList = [[Vertex]]()
  private var vertexIndices = [Vertex : Int]()
  private var indexVertices = [Int: Vertex]()

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
}
