# File: binary.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Binary search
# Time complexity: О(n)
#
# Description: Looks at the elements one by one in order.
#              [http://en.wikipedia.org/wiki/Linear_search]
#
# Requirements: Needs to be able to compare elements with ==
#               and access them with []
#
# Usage:
#  Algorithms::Sequences::Search.binary_search([2, 8, 2, 3, 1], 8) => 1
#  Algorithms::Sequences::Search.binary_search([2, 8, 2, 3, 1], 5) => nil

module Algorithms::Sequences::Search
  module_function

  def linear_search (sequence, element)
    return nil if element.nil?
    return nil if sequence.nil?
    return nil if sequence.empty?

    for i in 0..sequence.size-1 do
      return i if sequence[i] == element
    end

    nil
  end
end
