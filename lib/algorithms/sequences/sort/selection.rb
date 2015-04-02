# File: selection.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Selection sort
# Time complexity: О(n^2)
# Space complexity: O(1) auxiliary
# Stable: No, but it can be stable with O(n) auxiliary space
#
# Description: Pick the smallest of the remaining elements, add it to the end of the sorted list.
# Requirements: Needs to be able to compare elements with <, and access them with []
#
# Usage:
#   Algorithms::Sequences::Sort.selection_sort [8, 2, 1, 3, 2, 5] => [1, 2, 2, 3, 5, 8]

module Algorithms::Sequences::Sort
  module_function

  def selection_sort (sequence)

    for i in 0..sequence.size-1 do
      min_pos = i

      for j in i+1..sequence.size-1 do
        min_pos = j if sequence[j] < sequence[min_pos]
      end

      sequence[i], sequence[min_pos] = sequence[min_pos], sequence[i]
    end

    sequence
  end

end
