//
//  MinStack.swift
//  DSA
//
//  Created by Vijay on 1/14/25.
//

import Foundation

// 155. Min Stack
// Medium
// Topics
// Companies
// Hint
//
// Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
//
// Implement the MinStack class:
//
//     MinStack() initializes the stack object.
//     void push(int val) pushes the element val onto the stack.
//     void pop() removes the element on the top of the stack.
//     int top() gets the top element of the stack.
//     int getMin() retrieves the minimum element in the stack.
//
// You must implement a solution with O(1) time complexity for each function.
//
//
//
// Example 1:
//
// Input
// ["MinStack","push","push","push","getMin","pop","top","getMin"]
// [[],[-2],[0],[-3],[],[],[],[]]
//
// Output
// [null,null,null,null,-3,null,0,-2]
//
// Explanation
// MinStack minStack = new MinStack();
// minStack.push(-2);
// minStack.push(0);
// minStack.push(-3);
// minStack.getMin(); // return -3
// minStack.pop();
// minStack.top();    // return 0
// minStack.getMin(); // return -2
//
//
//
// Constraints:
//
//     -231 <= val <= 231 - 1
//     Methods pop, top and getMin operations will always be called on non-empty stacks.
//     At most 3 * 104 calls will be made to push, pop, top, and getMin.
//
// SOLUTION
// To solve this problem, we'll use two stacks. The first stack, which is the main stack, will store all elements. The other stack will keep track of the minimum elements.
// When pushing an element, we'll add it to the main stack. If it's smaller than or equal to the current minimum, we'll also add it to the minimum stack.
// For pop operations, we'll remove from both stacks if the popped element is the current minimum.
// The top operation will return the top of the main stack, while getMin will return the top of the minimum stack.
// This approach ensures all operations have O (1) time complexity because each operation only involves adding or removing elements from the top of the stacks, which are constant-time operations.
// class MinStack:
// def _(nit_(self):
// # Intttalize main stack and minimum stack
// self.stack = 0)
// self.min stack = [1
// def push(self, val: int) -> None:
// • Push to main stack self.stack.append(val)
// • Update mininun stack y necessary
// if not self.min stack or val ca self.min stack(-11:
// self.min stack.append(val)
// def pop(self) -> None:
// • Remove from main stack if self.stack:
// * If popped element is current minimun,
// # remove fron min_stack
// (f self.stack[-l) = self.ntn_stack{-11:
// self.min_stack,popt
// self.stack.pop()
// def top(self) > int:
// * Return top element of main stack if self.stack:
// return self.stackf-1l
// def getMin(self) -> int:
// # Return top of mintmum stack
// (f self min stack:
// return self.min_stack[-1]
