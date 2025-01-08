//
//  Sort.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 5/8/24.
//

import Foundation

public protocol Sort {
    associatedtype T: Comparable

    init(elements: [T])
    var elements: [T] { get }
}
