$: << File.join(File.expand_path(File.dirname(__FILE__)), '../lib')

require 'benchmark'
require 'algorithms-rb'

include Algorithms
include Sequences

@n = 5000

def ordered_sequence
  return Array(1..@n)
end

def reversed_sequence
  return Array(@n..1)
end

def random_sequence
  return Array(1..@n).map { rand }
end


Benchmark.bm(20) do |x|
  puts "= Sorted sequence ="
  x.report("Bubble Sort:   ") { Sort.bubble_sort(ordered_sequence) }
  x.report("Insertion Sort:") { Sort.insertion_sort(ordered_sequence) }
  x.report("Selection Sort:") { Sort.selection_sort(ordered_sequence) }
  x.report("Merge Sort:    ") { Sort.merge_sort(ordered_sequence) }
  x.report("Shell Sort:    ") { Sort.shell_sort(ordered_sequence) }

  puts ""
  puts "= Reverse sequence ="
  x.report("Bubble Sort:   ") { Sort.bubble_sort(reversed_sequence) }
  x.report("Insertion Sort:") { Sort.insertion_sort(reversed_sequence) }
  x.report("Selection Sort:") { Sort.selection_sort(reversed_sequence) }
  x.report("Merge Sort:    ") { Sort.merge_sort(reversed_sequence) }
  x.report("Shell Sort:    ") { Sort.shell_sort(reversed_sequence) }

  puts ""
  puts "= Random sequence ="
  x.report("Bubble Sort:   ") { Sort.bubble_sort(random_sequence) }
  x.report("Insertion Sort:") { Sort.insertion_sort(random_sequence) }
  x.report("Selection Sort:") { Sort.selection_sort(random_sequence) }
  x.report("Merge Sort:    ") { Sort.merge_sort(random_sequence) }
  x.report("Shell Sort:    ") { Sort.shell_sort(random_sequence) }
end
