$: << File.join(File.expand_path(File.dirname(__FILE__)), '../lib')

require 'benchmark'
require 'algorithms-rb'

include Algorithms
include Sequences

n = 5000

ordered_sequence = Array(1..n)
reversed_sequence = Array(1..n).reverse
random_sequence = Array(1..n).map { rand }


Benchmark.bm(20) do |x|
  puts "= Sorted sequence ="
  x.report("Ruby's sort:   ") { (ordered_sequence.dup).sort }
  puts ""
  x.report("Bubble sort:   ") { Sort.bubble_sort(ordered_sequence.dup) }
  x.report("Insertion sort:") { Sort.insertion_sort(ordered_sequence.dup) }
  x.report("Selection sort:") { Sort.selection_sort(ordered_sequence.dup) }
  x.report("Merge sort:    ") { Sort.merge_sort(ordered_sequence.dup) }
  x.report("Shell sort:    ") { Sort.shell_sort(ordered_sequence.dup) }
  x.report("Quick sort:    ") { Sort.quick_sort(ordered_sequence.dup) }

  puts ""
  puts "= Reverse sequence ="
  x.report("Ruby's sort:   ") { (reversed_sequence.dup).sort }
  puts ""
  x.report("Bubble sort:   ") { Sort.bubble_sort(reversed_sequence.dup) }
  x.report("Insertion sort:") { Sort.insertion_sort(reversed_sequence.dup) }
  x.report("Selection sort:") { Sort.selection_sort(reversed_sequence.dup) }
  x.report("Merge sort:    ") { Sort.merge_sort(reversed_sequence.dup) }
  x.report("Shell sort:    ") { Sort.shell_sort(reversed_sequence.dup) }
  x.report("Quick sort:    ") { Sort.quick_sort(reversed_sequence.dup) }

  puts ""
  puts "= Random sequence ="
  x.report("Ruby's sort:   ") { (random_sequence.dup).sort }
  puts ""
  x.report("Bubble sort:   ") { Sort.bubble_sort(random_sequence.dup) }
  x.report("Insertion sort:") { Sort.insertion_sort(random_sequence.dup) }
  x.report("Selection sort:") { Sort.selection_sort(random_sequence.dup) }
  x.report("Merge sort:    ") { Sort.merge_sort(random_sequence.dup) }
  x.report("Shell sort:    ") { Sort.shell_sort(random_sequence.dup) }
  x.report("Quick sort:    ") { Sort.quick_sort(random_sequence.dup) }
end
