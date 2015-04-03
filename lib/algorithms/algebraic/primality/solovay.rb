# File: solovay.rb
# Author: Alonso Gragera
# Email: alonso@is.s.u-tokyo.ac.jp
#
# Algorithm: Solovay–Strassen primality test
# Invented by: Robert M. Solovay and Volker Strassen
#
#
# Description: Selects random numbers and calculates the Jacobi symbol with the
#              candidate, O((log n)²) checking if they are relatively primes.
#              [http://en.wikipedia.org/wiki/Solovay–Strassen_primality_test]
#
# Requirements: Works with integers > 1
#
# Usage:
#  Algorithms::Sequences::Search.solovay_strassen(1171) => true
#  Algorithms::Sequences::Search.solovay_strassen(1177) => false

module Algorithms::Algebraic::Primality
  module_function

  def solovay_strassen (number, k = 5)
    return nil if number.nil?
    return nil if !number.integer?
    return nil if number <= 1           # ERROR - PRIMALITY NOT DEFINED

    return true  if number == 2         # 2 is prime
    return false if (number % 2) == 0   # Even numbers are not primes (except 2)


    for i in 1..k do
      a = rand(2..number-1)
      x = jacobi_symbol(a, number)

      return false if x == 0            # Equivalent to GDC(a,number) != 1
      return false if ((a**((number-1)/2)) % number) != (x % number)

    end

    return true
  end

  # Algorithm 2.149 from "Handbook of Applied Cryptography"
  def jacobi_symbol(n, p)
    raise 'Jacobi symbol is not defined for numbers < 3.' if p < 3

    n = n % p

    return 0 if n == 0 # Step 1
    return 1 if n == 1 # Step 2

    e, n1 = factor_out_twos n # Step 3
    s = (e.even? || [1, 7].include?(p % 8)) ? 1 : -1 # Step 4
    s = -s if (p % 4) == 3 && (n1 % 4) == 3 # Step 5

    # Step 6 and 7
    return s if n1 == 1
    s * jacobi_symbol(p, n1)
  end
  private_class_method :jacobi_symbol

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
