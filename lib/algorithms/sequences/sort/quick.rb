# File: quick.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Quick sort
# Time complexity: О(n log n)
# Space complexity: O(n) auxiliary
# Stable: No
#
# Description: Select a pivot, divide the list into smaller than the pivot,
#              pivot and bigger than the pivot, sort each separately.
#              [http://en.wikipedia.org/wiki/Quicksort]
#
# Requirements: Needs to be able to compare elements with <,
#               and access them with []
#
# Usage:
#  Algorithms::Sequences::Sort.quick_sort [8, 2, 1, 3, 2] => [1, 2, 2, 3, 8]

module Algorithms::Sequences::Sort
  module_function

  def quick_sort(sequence)
    quicksort(sequence,0,sequence.size-1)

    sequence
  end


  def quicksort (sequence, left, right)
    if left < right
      pivot = partition(sequence, left, right)
      quicksort(sequence,left, pivot-1)
      quicksort(sequence,pivot+1, right)
    end
  end
  private_class_method :quicksort

  def partition (sequence, left, right)
    pivot_index = left
    pivot_value = sequence[left]

    sequence[pivot_index], sequence[right] = sequence[right], sequence[pivot_index]

    for i in left..right-1 do
      if sequence[i] < pivot_value
        sequence[i], sequence[pivot_index] = sequence[pivot_index], sequence[i]
        pivot_index += 1
      end
    end

    sequence[pivot_index], sequence[right] = sequence[right], sequence[pivot_index]

    pivot_index
  end
  private_class_method :partition

end
