require 'prime'

n = 1_000_000
#n = 60_000
primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= n}

circular_primes = []

primes.each do |prime|

  # getting all rotations
  arrayed_prime = prime.to_s.each_char.to_a
  k = Array.new(arrayed_prime.size) { arrayed_prime.dup }

  possible_circular_primes = []

  def check_prime(primes, k, &block)

    k.each_index do |i|
      if i.zero?
        yield k[i].join.to_i
      else
        possible_prime = k[i].rotate(i).join.to_i
        yield possible_prime
      end
    end
  end

  catch :bad_prime do
    check_prime(primes, k) do |possible_prime|
      if primes.include? possible_prime
        possible_circular_primes << possible_prime
      else
        throw :bad_prime
      end
    end

    if possible_circular_primes.size == k.size
      circular_primes << possible_circular_primes
    end
  end
end

p circular_primes.flatten.uniq.size
