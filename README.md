# algorithms-rb

A library of basic and advanced algorithms and data structures in Ruby.

This library is programmed to be used as a code examples in any algorithmic or/and data structures course (from 101-level to graduate-level) given in Ruby. We aim to use Ruby's neatness to provide implemantations close to the studied pseudocode, but still being efficient enough.

Another intended use of the library are programming contests where Ruby, mostly due to the absence of an standarized library for advance data structures and advance algorithms, is not being widely used (even among veteran rubists).

We also provide both __benchmarks__, to ensure performance, and __tests__, to ensure correctness.


## Contents

#### Data Structures

``Structures::Heap``

``Structures::FibonacciHeap``

``Structures::Stack``

``Structures::Queue``

``Structures::PriorityQueue``

``Structures::LinkedList``

``Structures::DoubleLinkedList``

``Structures::UndirectedGraph``

``Structures::DirectedGraph``

``Structures::BinaryTree``

``Structures::RedBlackTree``

``Structures::AVLTree``

``Structures::BTree``

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
	| Heap sort | O(n log n) | O(1) | Selection | Convert the list into a heap, keep removing the largest element from the heap and adding it to the end of the list |  |
	| Radix sort | O() | O() | Non-comparison | Sorts strings letter by letter |  |
	| Bucket sort | O() | O() | Non-comparison | - |  |
-->

- Comb sort
- Cocktail sort
- Heap sort
- Smooth sort
- Bucket sort

<br>
``Algorithms::Sequences::Search``

| Name  | Time complexity | Space complexity | Strategy | Description |
| :---- | :-------------: | :--------------: | :------: | :---------- |
| Linear search | O(n) | O(1) | Naive | Looks at the elements one by one in order |
| Binary search | O(log n)* | O(1) | Divide and Conquer | Repeatedly splits the sequence in two subsections, and choose the one that contains the element |
<!--
| Selection search | O(n) | k + O(1) | - | - |
-->

- Selection search

(*) Binary search requires an ordered sequence.

<br>
``Algorithms::Sequences::Merge``
- Simple merge
- K-way merge
- Union

``Algorithms::Sequences::Subsequence``
- Kadane
- Longest common subsequence
- Longest increasing subsequence
- Shortest common supersequence

``Algorithms::Sequences::Permutation``
- Fisher–Yates shuffle
- Schensted
- Steinhaus–Johnson
- Heap's permutation generation

``Algorithms::Sequences::Alignment``
- Dynamic time warping
- Hirschberg
- Needleman–Wunsch
- Smith–Waterman

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

| Name  | Time complexity | Space complexity | Strategy | Accuracy | Description |
| :---- | :-------------: | :--------------: | :------: | :------: | :---------- |
| Solovay–Strassen primality test | O(k log^3 n) | O(1) | Randomized | 1/2 | Selects random numbers and checks if they are relatively primes with the candidate using the Jacobi symbol|
| Miller–Rabin primality test | O(k log^3 n) | O(1) | Randomized | 3/4 | Selects random numbers and checks if they are relatively primes with the candidate using the Jacobi symbol|

- Eratosthenes
- Pocklington
- Agrawal–Kayal–Saxena

``Algorithms::Geometric``
- Closest pair
- Nearest neighbor

``Algorithms::Geometric::Hull``
- Graham scan
- Quickhull
- Gift wrapping
- Chan
- Kirkpatrick–Seidel

<!--
``Algorithms::Geometric::Distances``
-->

``Algorithms::Geometric::Intersection``
- Bentley–Ottmann
- Shamos–Hoey


<!-- ``Algorithms::Optimization`` -->

``Algorithms::Graphs``
- Topological sort
- Strongly connected components

``Algorithms::Graphs::Search``
- Breadth-first search
- Depth-first search
- Uniform cost search
- A* search

``Algorithms::Graphs::Spanning``
- Kruskal
- Prim

``Algorithms::Graphs::Shortest``
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
- Aho–Corasick
- Boyer–Moore
- Boyer–Moore–Horspool
- Rabin-Karp
- Knuth-Morris-Pratt
- Zhu–Takaoka

``Algorithms::Strings::Sort``
- Radix sort


<!---
``Algorithms::Puzzles``

``Algorithms::Cryptography``
-->
