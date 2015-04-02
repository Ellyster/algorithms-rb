$: << File.join(File.expand_path(File.dirname(__FILE__)), '../lib')

require 'benchmark'
require 'algorithms-rb'

include Algorithms
include Sequences

n = 5000

ordered_sequence = Array(1..n)
reversed_sequence = Array(n..1)
random_sequence = Array(1..n).map { rand }


Benchmark.bm(20) do |x|
  puts "= Sorted sequence ="
  x.report("Ruby's Sort:   ") { (ordered_sequence.dup).sort }
  puts ""
  x.report("Bubble Sort:   ") { Sort.bubble_sort(ordered_sequence.dup) }
  x.report("Insertion Sort:") { Sort.insertion_sort(ordered_sequence.dup) }
  x.report("Selection Sort:") { Sort.selection_sort(ordered_sequence.dup) }
  x.report("Merge Sort:    ") { Sort.merge_sort(ordered_sequence.dup) }
  x.report("Shell Sort:    ") { Sort.shell_sort(ordered_sequence.dup) }
  x.report("Quick Sort:    ") { Sort.quick_sort(ordered_sequence.dup) }

  puts ""
  puts "= Reverse sequence ="
  x.report("Ruby's Sort:   ") { (reversed_sequence.dup).sort }
  puts ""
  x.report("Bubble Sort:   ") { Sort.bubble_sort(reversed_sequence.dup) }
  x.report("Insertion Sort:") { Sort.insertion_sort(reversed_sequence.dup) }
  x.report("Selection Sort:") { Sort.selection_sort(reversed_sequence.dup) }
  x.report("Merge Sort:    ") { Sort.merge_sort(reversed_sequence.dup) }
  x.report("Shell Sort:    ") { Sort.shell_sort(reversed_sequence.dup) }
  x.report("Quick Sort:    ") { Sort.quick_sort(reversed_sequence.dup) }

  puts ""
  puts "= Random sequence ="
  x.report("Ruby's Sort:   ") { (random_sequence.dup).sort }
  puts ""
  x.report("Bubble Sort:   ") { Sort.bubble_sort(random_sequence.dup) }
  x.report("Insertion Sort:") { Sort.insertion_sort(random_sequence.dup) }
  x.report("Selection Sort:") { Sort.selection_sort(random_sequence.dup) }
  x.report("Merge Sort:    ") { Sort.merge_sort(random_sequence.dup) }
  x.report("Shell Sort:    ") { Sort.shell_sort(random_sequence.dup) }
  x.report("Quick Sort:    ") { Sort.quick_sort(random_sequence.dup) }
end
