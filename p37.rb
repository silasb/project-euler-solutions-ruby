require 'prime'

truncatable_primes = []

not_truncatable = [2, 3, 5, 7]

primes = Prime.each do |prime|
  prime_array = prime.to_s.each_char.to_a

  if truncatable_primes.size == 11
    break
  end

  next if not_truncatable.include? prime

  truncated_primes = prime_array.map.each_with_index do |m, i|
    left = prime_array.dup.shift(i).join.to_i
    right = prime_array.dup.pop(i).join.to_i

    m = [left, right]
  end

  truncated_primes.shift

  all = truncated_primes.all? { |left, right|
    Prime.prime?(left) and Prime.prime?(right)
  }

  if all
    truncatable_primes << prime
  end

end

p truncatable_primes.inject(:+)
