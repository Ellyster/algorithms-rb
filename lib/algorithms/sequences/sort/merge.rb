# File: merge.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Merge sort
# Time complexity: О(n log n)
# Space complexity: O(n) auxiliary
# Stable: Yes
#
# Description: Divide in two halfs, sort the first and second half of the list separately, then merge the sorted list.
# Requirements: Needs to be able to compare elements with <, and access them with []
#
# Usage:
#   Algorithms::Sequences::Sort.insertion_sort [8, 2, 1, 3, 2, 5] => [1, 2, 2, 3, 5, 8]

module Algorithms::Sequences::Sort
  module_function

  def merge_sort (sequence)
    return sequence if sequence.size <= 1

    mid_pos = sequence.size/2
    left = sequence[0...mid_pos]
    right = sequence[mid_pos...sequence.size]

    merge(merge_sort(left),merge_sort(right))
  end

  def merge (left, right)
    sorted = []

    until left.empty? or right.empty?
      left.first <= right.first ? sorted << left.shift : sorted << right.shift
    end
    sorted + left + right
  end
  private_class_method :merge

end
