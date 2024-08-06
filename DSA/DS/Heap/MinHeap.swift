//
//  MinHeap.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

struct MinHeap<T: Comparable>: Heap {
  private(set) var array: [T] = []
  
  init(array: [T]) {
    self.array = array
    heapify()
  }
  
  func insert(_: T) {
    
  }
  
  func remove() -> T? {
    nil
  }
  
  func peek() -> T? {
    nil
  }
  
  mutating func heapify_recursive(rootIndex i_root: Int? = nil) {
    guard let i_root = i_root else {
      for i in (0...((array.count / 2) - 1)).reversed() {
        heapify_recursive(rootIndex: i)
      }
      return
    }
    
    var i_min = i_root
    let i_leftChild = 2 * i_root + 1
    let i_rightChild = 2 * i_root + 2
      
    if i_leftChild < array.count && array[i_leftChild] < array[i_min] {
      i_min = i_leftChild
    }
    
    if i_rightChild < array.count && array[i_rightChild] < array[i_min] {
      i_min = i_rightChild
    }
    
    if i_min != i_root {
      array.swapAt(i_min, i_root)
      heapify_recursive(rootIndex: i_root)
    }
  }
  
  mutating func heapify_iterative() {
    var i_root = ((array.count / 2) - 1)
    while i_root > -1 {
      let i_leftChild = 2 * i_root + 1
      let i_rightChild = 2 * i_root + 2
      var i_min = i_root
      
      if i_leftChild < array.count && array[i_leftChild] < array[i_min] {
        i_min = i_leftChild
      }
      
      if i_rightChild < array.count && array[i_rightChild] < array[i_min] {
        i_min = i_rightChild
      }
      
      if i_min != i_root {
        array.swapAt(i_min, i_root)
        i_root = i_min
      } else {
        i_root -= 1
      }
    }
  }
  
  mutating func heapify() {
    heapify_iterative()
  }
}
