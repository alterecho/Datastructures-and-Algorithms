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
  }
  
  func insert(_: T) {
    
  }
  
  func remove() -> T? {
    nil
  }
  
  func peek() -> T? {
    nil
  }
  
  func heapify() {
    
  }
}
