//
//  main.swift
//  algo
//
//  Created by Vijaychandran Jayachandran on 27/7/24.
//

import Foundation

print("Hello, World!")


var graph = AdjacencyListGraph<String>()
graph.add(edge: ("q", "a"))
graph.add(edge: ("a", "b"))
graph.add(edge: ("b", "d"))
graph.add(edge: ("d", "l"))
graph.add(edge: ("l", "a"))

print(graph)

//let q1 = TwoSum()
//let q2 = LongestSubstring()
let q3 = MergeSortedLists()

//q1.execute()
//q2.execute()
q3.execute()
