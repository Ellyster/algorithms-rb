# File: insertion.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Insertion sort
# Time complexity: О(n^2)
# Space complexity: O(1) auxiliary
# Stable: Yes
#
# Description: Determine where the current items belongs in the list of sorted ones and insert it there.
# Requirements: Needs to be able to compare elements with <, and access them with []
#
# Usage:
#   Algorithms::Sequences::Sort.insertion_sort [8, 2, 1, 3, 2, 5] => [1, 2, 2, 3, 5, 8]

module Algorithms::Sequences::Sort
  module_function

  def insertion_sort (sequence)
    return sequence if sequence.size < 2

    for i in 1..sequence.size-1 do
      candidate = sequence[i]
      j = i-1

      while j >= 0 && sequence[j] > candidate do
        sequence[j+1] = sequence[j]
        j -= 1
      end

      sequence[j+1] = candidate
    end

    sequence
  end

end
