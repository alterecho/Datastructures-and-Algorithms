//
//  BinarySearch.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 4/8/24.
//

import Foundation

class BinarySearch<T: Comparable>: Search {
  private let elements: [T]
  
  init(elements: [T]) {
    self.elements = elements
  }
  
  func find(_ target: T) -> Int? {
    guard elements.count > 0 else {
      return nil
    }
    let sortedElements = elements.sorted()
    var left = 0, right = elements.count - 1
    while left <= right {
      let middle = left + (right - left) / 2
      if middle < 0 {
        return nil
      } else if sortedElements[middle] == target {
        return middle
      } else if target > sortedElements[middle] {
        left = middle + 1
      } else if target < sortedElements[middle] {
        right = middle - 1
      }
    }
    
    return nil
  }
}
