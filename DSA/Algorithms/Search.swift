//
//  Search.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 4/8/24.
//

import Foundation

protocol Search {
  associatedtype T: Comparable
  func find(_: T) -> Int?
}
