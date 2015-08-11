require 'prime'

number = 600851475143
#number = 13195

primes = Prime.prime_division(number)

p primes.max
