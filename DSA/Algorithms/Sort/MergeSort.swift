//
//  MergeSort.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

public class MergeSort<T: Comparable>: Sort {
  public private(set) var elements: [T] = []
  
  public required init(elements: [T]) {
    self.elements = sort(elements: elements)
  }
  
  private func sort(elements: [T]) -> [T] {
    guard elements.count > 1 else {
      return elements
    }
    let index_mid = elements.count / 2
    let leftArray = sort(elements: Array(elements[0..<index_mid]))
    let rightArray = sort(elements: Array(elements[index_mid...]))
    return merge(array1: leftArray, array2: rightArray)
  }
  
  public func merge(array1: [T], array2: [T]) -> [T]{
    var index1 = 0, index2 = 0
    var array = [T]()
    while index1 < array1.count && index2 < array2.count {
      if array1[index1] <= array2[index2] {
        array.append(array1[index1])
        index1 += 1
      } else {
        array.append(array2[index2])
        index2 += 1
      }
    }
    
    array.append(contentsOf: array1[(index1)...])
    array.append(contentsOf: array2[(index2)...])
    
    return array
  }
}
