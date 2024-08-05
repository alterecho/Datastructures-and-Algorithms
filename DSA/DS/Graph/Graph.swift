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
