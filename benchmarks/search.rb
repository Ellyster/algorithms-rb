$: << File.join(File.expand_path(File.dirname(__FILE__)), '../lib')

require 'benchmark'
require 'algorithms-rb'

include Algorithms
include Sequences

n = 5000
e = 997

ordered_sequence = Array(1..n)
reversed_sequence = Array(1..n).reverse
random_sequence = Array(1..n).map { rand }


Benchmark.bm(20) do |x|
  puts "= Sorted sequence ="
  x.report("Ruby's search:   ") { (ordered_sequence.dup).index(e)  }
  puts ""
  x.report("Linear search:   ") { Search.linear_search(ordered_sequence.dup,e) }
  x.report("Binary search:   ") { Search.binary_search(ordered_sequence.dup,e) }

  puts ""
  puts "= Reverse sequence ="
  x.report("Ruby's search:   ") { (reversed_sequence.dup).index(e)  }
  puts ""
  x.report("Linear search:   ") { Search.linear_search(reversed_sequence.dup,e) }
  x.report("Binary search:   ") { Search.binary_search(reversed_sequence.dup,e) }

  puts ""
  puts "= Random sequence ="
  x.report("Ruby's search:   ") { (random_sequence.dup).index(e)  }
  puts ""
  x.report("Linear search:   ") { Search.linear_search(random_sequence.dup,e) }
end
