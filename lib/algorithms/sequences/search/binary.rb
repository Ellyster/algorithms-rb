# File: binary.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Binary search
# Time complexity: О(log n)
#
# Description: Repeatedly splits the sequence in two subsections, and choose
#              the one that contains the element.
#              [http://en.wikipedia.org/wiki/Binary_search]
#
# Requirements: The sequence MUST be ordered. Needs to be able to compare
#               elements with >, <, == and access them with []
#
# Usage:
#  Algorithms::Sequences::Search.binary_search([1, 2, 2, 3, 8], 3) => 3
#  Algorithms::Sequences::Search.binary_search([1, 2, 2, 3, 8], 5) => nil

module Algorithms::Sequences::Search
  module_function

  def binary_search (sequence, element)
    return nil if element.nil?
    return nil if sequence.nil?
    return nil if sequence.empty?

    left = 0
    right = sequence.size - 1
    ascending = (sequence[left] <= sequence[right])? true : false

    while left <= right
      middle_index = (left + right) / 2
      middle_value = sequence[middle_index]

      if ascending
        right = middle_index - 1 if element < middle_value
        left = middle_index + 1 if element > middle_value
      else
        right = middle_index - 1 if element > middle_value
        left = middle_index + 1 if element < middle_value
      end

      return middle_index if element == middle_value

    end

    nil
  end
end
