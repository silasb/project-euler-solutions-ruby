require 'test/unit'

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
