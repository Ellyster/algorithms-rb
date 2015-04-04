# File: miller.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Miller–Rabin primality test
# Invented by:
#
# Time complexity: O(k log^3 n)
# Space complexity: O(1) auxiliary
# Accuracy: 3/4
#
# Description: Selects random numbers and calculates the mod_exp with the
#              candidate, checking if they are relatively primes.
#              [http://en.wikipedia.org/wiki/Miller%E2%80%93Rabin_primality_test]
#
# Requirements: Works with integers > 1
#
# Usage:
#  Algorithms::Sequences::Search.miller_rabin(1171) => true
#  Algorithms::Sequences::Search.miller_rabin(1177) => false

module Algorithms::Algebraic::Primality
  module_function

  def miller_rabin (number, k = 5)
    return nil if number.nil?
    return nil if !number.integer?
    return nil if number <= 1           # ERROR - PRIMALITY NOT DEFINED

    return true  if number == 2         # 2 is prime
    return false if (number % 2) == 0   # Even numbers are not primes (except 2)


    s, d = factor_out_twos number-1

    for i in 1..k do
      a = rand(2..number-2)
      x = mod_exp(a, d, number)         # x = (a^d) % n

      next if x == 1 || x == number-1

      for r in 1..s-1 do
        x = mod_exp(x, 2, number)       # x = (x^2) % n
        return false if x == 1
        break if x == number-1
      end

      return false if x != number-1
    end

    return true                         # "Probably prime"
  end

  #
  def mod_exp(n, e, mod)
    raise 'Negative exponent error' if e < 0

    product = 1
    base = n % mod

    until e == 0 do
      product = (product * base) % mod if e.odd?
      e >>= 1
      base = (base * base) % mod
    end

    product

  end
  private_class_method :mod_exp

  def factor_out_twos(x)
    e = 0

    while x.even? do
      x /= 2
      e += 1
    end

    [e, x]
  end
  private_class_method :factor_out_twos

end
