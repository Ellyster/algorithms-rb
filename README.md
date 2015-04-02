algorithms-rb
======

My Ruby library of algorithms and data structures (for Programming Contests and teaching purposes).

Data Structures
===============
``Structures::Heap``

``Structures::Stack``

``Structures::Queue``

``Structures::PriorityQueue``

``Structures::LinkedList``

``Structures::DoubleLinkedList``

``Structures::UndirectedGraph``

``Structures::DirectedGraph``

``Structures::BinaryTree``

``Structures::BackRedTree``

Algorithms
==========

``Algorithms::Sequences::Sort``

| Name  | Time complexity | Space complexity | Strategy | Description | Notes |
| :----- | :---------: | :----: | :----------- | :----- |
| Insertion sort | O(n^2) | O(1) | Insertion | Determine where the current items belongs in the list of sorted ones and insert it there |  |
| Shell sort | O(n^2) | O(1) | Insertion | A generalization of insertion sort that allows the exchange of items that are far apart |  |
| Merge sort | O(n log n) | O(n) | Merge | Divide in two halves, sort the first and second half of the list separately, then merge the sorted list |  |
| Bubble sort | О(n^2) | О(1) | Exchange | For each pair of indices, swap the items if out of order |  |
| Quick sort | O(n log n)* | O(log n) | Exchange | Select a pivot, divide the list into smaller than the pivot, pivot and bigger than the pivot, sort each separately  | Fast, small hidden constant |
| Selection sort | O(n^2) | O(1) | Selection | Pick the smallest of the remaining elements, add it to the end of the sorted list |  |
<!--
	| Comb sort | O() | O() | Exchange | - |  |
	| Cocktail sort | O() | O() | Exchange | - |  |
	| Heap sort | O() | O() | Selection | Convert the list into a heap, keep removing the largest element from the heap and adding it to the end of the list |  |
	| Radix sort | O() | O() | Non-comparison | Sorts strings letter by letter |  |
	| Bucket sort | O() | O() | Non-comparison | - |  |
-->

``Algorithms::Sequences::Search``

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

``Algorithms::Geometric``

``Algorithms::Optimization``

``Algorithms::Graphs``

``Algorithms::Strings``

<!---
``Algorithms::Puzzles``

``Algorithms::Cryptography``
-->
