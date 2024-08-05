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
  
  private func binarySearch_iterative(target: T) -> Int? {
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
  
  private func binarySearch_recursive(target: T, elements: [T]? = nil) -> Int? {
    let elements = elements ?? self.elements
    guard elements.count > 0 else {
      return nil
    }
    let index_mid = elements.count / 2
    let element_mid = elements[index_mid]
    if element_mid == target {
      return index_mid
    } else if target < element_mid && index_mid != 0 {
      return binarySearch_recursive(target: target, elements: Array(elements[0..<index_mid]))
    } else if target > element_mid && index_mid != elements.count - 1 {
      guard let index = binarySearch_recursive(target: target, elements: Array(elements[index_mid..<elements.count])) else {
        return nil
      }
      return index_mid + index
    }
    return nil
  }

  func find(_ target: T) -> Int? {
    return binarySearch_recursive(target: target)
  }
}
