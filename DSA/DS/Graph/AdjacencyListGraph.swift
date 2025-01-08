//
//  AdjacencyListGraph.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

struct AdjacencyMatrixGraph<Vertex: Comparable & Hashable>: Graph {
    private var matrix: [[Bool]]
    private let vertexIndexMap: [Vertex: Int]
    private let indexVertexMap: [Int: Vertex]

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

    var description: String {
        let red = matrix.enumerated().reduce(("", "")) {
            partialResult, iterator_i in

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
                .reduce("\n\(string_i)") {
                    partialResult,
                    boolValue in
                    return partialResult + " \(boolValue ? 1 : 0)"
                }
            return (headingString, partialResult.1 + sub)
        }

        return " \(red.0)\(red.1)"
    }

    mutating func add(edge: (Vertex, Vertex)) {
        guard let first = vertexIndexMap[edge.0],
            let second = vertexIndexMap[edge.1]
        else {
            return
        }

        matrix[first][second] = true
        matrix[second][first] = true
    }

    func dfs(root: Vertex, visited: [Vertex]) {
    }
}
