$: << File.join(File.expand_path(File.dirname(__FILE__)), '../../lib')

require 'benchmark'
require 'algorithms-rb'

include Algorithms
include Algebraic

prime = 1171
composite = 1177
random = rand(10000)

Benchmark.bm(20) do |x|
  puts "= Prime number ="
  x.report("Solovay-Strassen test:   ") { Primality.solovay_strassen(prime, 5) }
  x.report("Miller–Rabin test:   ") { Primality.miller_rabin(prime, 5) }

  puts ""
  puts "= Composite number ="
  x.report("Solovay-Strassen test:   ") { Primality.solovay_strassen(composite, 5) }
  x.report("Miller–Rabin test:   ") { Primality.miller_rabin(composite, 5) }

  puts ""
  puts "= Random number ="
  x.report("Solovay-Strassen test:   ") { Primality.solovay_strassen(random, 5) }
  x.report("Miller–Rabin test:   ") { Primality.miller_rabin(random, 5) }

end
