//
//  MinHeap.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

public struct MinHeap<T: Comparable>: Heap {
  private(set) public var array: [T] = []
  
  public init(array: [T]) {
    self.array = array
    heapify()
  }
  
  mutating func insert(_ element: T) {
      array.append(element)
      siftUp(index: array.count - 1)
      
  }
    
  func peek() -> T? {
      return array.first
  }
    
    mutating func extract() -> T? {
        let min = array.removeFirst()
        siftDown_iterative(index: 0)
        return min
    }
  
  private mutating func siftDown_recursive(rootIndex i_root: Int? = nil) {
    guard let i_root = i_root else {
      for i in (0...((array.count / 2) - 1)).reversed() {
          siftDown_recursive(rootIndex: i)
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
        siftDown_recursive(rootIndex: i_root)
    }
  }
  
    private mutating func siftDown_iterative(index: Int) {
    var i_parent = index
    while i_parent > -1 {
      let i_leftChild = 2 * i_parent + 1
      let i_rightChild = 2 * i_parent + 2
      var i_min = i_parent
      
      if i_leftChild < array.count && array[i_leftChild] < array[i_min] {
        i_min = i_leftChild
      }
      
      if i_rightChild < array.count && array[i_rightChild] < array[i_min] {
        i_min = i_rightChild
      }
      
      if i_min != i_parent {
          array.swapAt(i_min, i_parent)
          i_parent = i_min
      } else {
          i_parent -= 1
      }
    }
  }
    
    private mutating func siftUp(index: Int) {
        var i_node = index
        while i_node > -1 {
            let i_parentIndex = (i_node - 1) / 2
            if array[i_node] < array[i_parentIndex] {
                array.swapAt(i_parentIndex, i_node)
            }
            i_node -= 1
        }
    }
  
private mutating func heapify() {
    siftDown_iterative(index: array.count / 2 - 1)
  }
}
