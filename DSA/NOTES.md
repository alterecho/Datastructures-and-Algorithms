| **Algorithm**            | **Description**                                                            | **Time Complexity**      | **Space Complexity**     |
|--------------------------|----------------------------------------------------------------------------|--------------------------|--------------------------|
| **Linear Search**         | Searches for an element in a list by checking each element sequentially.   | O(n)                     | O(1)                     |
| **Binary Search**         | Searches for an element in a sorted list by repeatedly dividing the search interval in half. | O(log n)                 | O(1)                     |
| **Jump Search**           | Searches for an element in a sorted list by jumping ahead by a fixed block size. | O(√n)                    | O(1)                     |
| **Exponential Search**    | Searches for an element in a sorted list by doubling the range to find the search range, then performs binary search. | O(log n)                 | O(1)                     |
| **Interpolation Search**  | Searches for an element in a sorted list, using the value of the element being searched for as a guide to estimate its position. | O(log log n) (best case) | O(1)                     |

### Merge Algorithms

| **Algorithm**            | **Description**                                                            | **Time Complexity**      | **Space Complexity**     |
|--------------------------|----------------------------------------------------------------------------|--------------------------|--------------------------|
| **Merge Sort**            | A divide-and-conquer algorithm that splits the list into halves, recursively sorts them, and merges them. | O(n log n)               | O(n)                     |
| **Insertion Sort**        | Sorts the list by repeatedly inserting an element into its correct position. | O(n^2)                   | O(1)                     |
| **Quick Sort**            | A divide-and-conquer algorithm that selects a pivot and partitions the list into two sublists, then recursively sorts the sublists. | O(n log n) (avg), O(n^2) (worst) | O(log n) (avg), O(n) (worst) |
| **Heap Sort**             | Sorts the list by building a binary heap and repeatedly extracting the max or min element. | O(n log n)               | O(1)                     |
| **Bucket Sort**           | Distributes the elements into a number of buckets, then sorts each bucket individually and merges the results. | O(n + k) (best case)     | O(n)                     |
| **Radix Sort**            | Sorts the numbers by processing individual digits and applying a stable sort on each digit. | O(nk) (where k is the number of digits) | O(n + k)                |

### Key Points:
- **Linear Search** is the slowest, with O(n) time complexity.
- **Binary Search** is much faster with O(log n) time complexity but requires the list to be sorted.
- **Merge Sort** is a stable O(n log n) sorting algorithm, but its space complexity is O(n) due to the auxiliary array used during merging.
- **Quick Sort** is generally faster than merge sort but has a worst-case time complexity of O(n^2), though it is efficient on average at O(n log n).

Let me know if you need further details on any of the algorithms!
