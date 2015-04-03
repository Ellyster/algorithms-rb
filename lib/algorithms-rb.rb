# File: algorithm-rb.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Require all implemented algorithms and data structures


module Algorithms
  module Sequences
    module Sort; end
    module Search; end
  end
  module Algebraic
    module Primality; end
  end
end

require_relative 'algorithms/sequences.rb'
require_relative 'algorithms/algebraic.rb'
