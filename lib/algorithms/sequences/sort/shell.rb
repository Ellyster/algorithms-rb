# File: shell.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Shell sort
# Time complexity: О(n^2), there are better versions just by changing the gaps
# Space complexity: O(1) auxiliary
# Stable: No
#
# Description: A generalization of insertion sort that allows the exchange
#              of items that are far apart (gap).
#              [http://en.wikipedia.org/wiki/Shellsort]
#
# Requirements: Needs to be able to compare elements with >,
#               and access them with []
#
# Usage:
#  Algorithms::Sequences::Sort.shell_sort [8, 2, 1, 3, 2] => [1, 2, 2, 3, 8]

module Algorithms::Sequences::Sort
  module_function

  def shell_sort (sequence)
    gap = sequence.size/2

    while gap > 0 do
      for i in gap..sequence.size-1 do
        candidate = sequence[i]
        j = i

        while j >= gap && sequence[j - gap] > candidate do
          sequence[j] = sequence[j - gap]
          j -= gap
        end

        sequence[j] = candidate
      end

      gap = (gap == 1 ? 0 : (gap / 2).round)
    end

    sequence
  end

end
