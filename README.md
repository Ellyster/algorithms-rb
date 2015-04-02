# algorithms-rb

A library of basic and advanced algorithms and data structures in Ruby.

This library is programm to be used as a code examples in any algorithmic and data structure course (from 101-level to graduate-level) given in Ruby. Aiming to use Ruby's neatness to provide implemantations close to the studied pseudocode, but still being efficient.

Another intended use of the library are programming contests, where Ruby mostly due to the absence of an standarized library for advance data structures and advance algorithms, is not being widely used (even among rubists).

We also provide both __benchmarks__, to ensure performance, and __tests__, to ensure correctness.


## Contents

#### Data Structures

``Structures::Stack``

``Structures::Queue``

``Structures::PriorityQueue``

``Structures::LinkedList``

``Structures::DoubleLinkedList``

``Structures::UndirectedGraph``

``Structures::DirectedGraph``

``Structures::BinaryTree``

``Structures::BlackRedTree``

#### Algorithms

``Algorithms::Sequences::Sort``

| Name  | Time complexity | Space complexity | Strategy | Description |
| :---- | :-------------: | :--------------: | :------: | :---------- |
| Insertion sort | O(n^2) | O(1) | Insertion | Determine where the current items belongs in the list of sorted ones and insert it there |
| Shell sort | O(n^2) | O(1) | Insertion | A generalization of insertion sort that allows the exchange of items that are far apart |
| Merge sort | O(n log n) | O(n) | Merge | Divide in two halves, sort the first and second half of the list separately, then merge the sorted list |
| Bubble sort | О(n^2) | О(1) | Exchange | For each pair of indices, swap the items if out of order |
| Quick sort | O(n log n)* | O(log n) | Exchange | Select a pivot, divide the list into smaller than the pivot, pivot and bigger than the pivot, sort each separately  |
| Selection sort | O(n^2) | O(1) | Selection | Pick the smallest of the remaining elements, add it to the end of the sorted list |

(*) In the Quick sort case, average complexity is more representative than worst case complexity

<!--
	| Comb sort | O() | O() | Exchange | - |  |
	| Cocktail sort | O() | O() | Exchange | - |  |
	| Heap sort | O() | O() | Selection | Convert the list into a heap, keep removing the largest element from the heap and adding it to the end of the list |  |
	| Radix sort | O() | O() | Non-comparison | Sorts strings letter by letter |  |
	| Bucket sort | O() | O() | Non-comparison | - |  |
-->

<br>
``Algorithms::Sequences::Search``

| Name  | Time complexity | Space complexity | Strategy | Description |
| :---- | :-------------: | :--------------: | :------: | :---------- |
| Linear search | O(n) | O(1) | Naive | Looks at the elements one by one in order |
| Binary search | O(log n) | O(1) | Divide and Conquer | Repeatedly splits the sequence in two subsections, and choose the one that contains the element |

<br>
``Algorithms::Sequences::Merge``

``Algorithms::Sequences::Subsequence``

``Algorithms::Sequences::Permutation``

<!---
``Algorithms::Numerical``

	- Matrix multiplication
	- Eigenvalue finding
	- Exponentiation
	- N-th Root
	- Linear equation system solving
	- Differential equation solving
	- Root finding

``Algorithms::Algebraic``

	- Greatest Common Divisor (GCD)
	- Multiplication
	- Integer factorization
	- Primalirty testing
	- Discrete logarithm

``Algorithms::Combinatorial``
-->

``Algorithms::Algebraic``
- GDC
- Chinese reminder

``Algorithms::Algebraic::Primality``
- Eratosthenes
- Pocklington
- Miller–Rabin
- Solovay–Strassen
- Agrawal–Kayal–Saxena

``Algorithms::Geometric``
- Convex hull
- Closest pair
- Segments intersection

<!-- ``Algorithms::Optimization`` -->

``Algorithms::Graphs``
- Topological sort
- Strongly connected components 

``Algorithms::Graphs::Search``
- Breadth-first search
- Depth-first search

``Algorithms::Graphs::Spanning``
- Kruskal
- Prim

``Algorithms::Graphs::Shortest``
- A*
- Bellman-Ford
- Dijkstra
- Floyd-Warshall
- Johnson

``Algorithms::Graphs::Flow``
- Ford-Fulkerson
- Push-relabel
- Relabel-to-front
- Bipartite matching

``Algorithms::Strings::Match``
- Rabin-Karp
- Knuth-Morris-Pratt

<!---
``Algorithms::Puzzles``

``Algorithms::Cryptography``
-->
