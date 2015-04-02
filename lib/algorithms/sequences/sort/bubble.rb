# File: bubble.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Bubble sort
# Time complexity: О(n^2)
# Space complexity: O(1) auxiliary
# Stable: Yes
#
# Description: For each pair of indices, swap the items if out of order.
#              [http://en.wikipedia.org/wiki/Bubble_sort]
#
# Requirements: Needs to be able to compare elements with >,
#               and access them with []
#
# Usage:
#  Algorithms::Sequences::Sort.bubble_sort [8, 2, 1, 3, 2] => [1, 2, 2, 3, 8]

module Algorithms::Sequences::Sort
  module_function

  def bubble_sort (sequence)
    swapped = true

    while swapped
      swapped = false

      for i in 0..sequence.size-2 do
        if sequence[i] > sequence[i+1]
          sequence[i], sequence[i+1] = sequence[i+1], sequence[i]
          swapped = true
        end
      end
    end

    sequence
  end
end
