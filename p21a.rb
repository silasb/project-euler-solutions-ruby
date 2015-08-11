require 'test/unit'
require 'pry'

class AmicableNumberGenerator 
	#include Enumerator::Lazy

	def each
	end
end

class AmicableNumber
	def self.amicable?(a, b)
		divisors_sum(a) == b and divisors_sum(b) == a
	end

	def self.divisor_sums_upto(n)
		(2..n).inject({}) do |r, i|
			r[i] = divisors_sum(i)
			r
		end
	end

	private

	def self.divisors_sum(n)
		a = (1..n/2).select do |i|
			n % i == 0
		end

		a.reduce(:+)
	end
end

goal = 10_000

def d(n)
	a = (1..n/2).select do |i|
		n % i == 0
	end

	a.reduce(:+)
end

a = (2..goal).map do |i|
	[i, d(i)]
end

amicable_numbers = []

a.each do |i, sum|
	next if i == sum

	if d(sum) == i
		amicable_numbers << i
	end
end

p amicable_numbers.reduce(:+)
