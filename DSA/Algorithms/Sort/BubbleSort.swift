//
//  BubbleSort.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

class BubbleSort<T: Comparable>: Sort {
  private(set) var elements: [T] = []
  
  required init(elements: [T]) {
    self.elements = sort(array: elements)
  }
  
  private func sort(array: [T]) -> [T] {
    var array = array
    var swapped = false
    for i in 0..<array.count {
      for j in 0..<array.count - i - 1 {
        if array[j] > array[j + 1] {
          array.swapAt(j, j + 1)
          swapped = true
        }
      }
      if swapped == false {
        return array
      }
    }
    return array
  }
}
