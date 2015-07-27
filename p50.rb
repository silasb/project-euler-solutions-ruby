require 'prime'

number = 1_000_000

primes = Prime.take_while { |n| n <= number }

largest_sum = 0
size = 0

primes.reverse.each do |prime|
	offset = 0

	while offset < primes.size - 1
		i = offset
		sum = 0

		while sum < prime and primes[i] != prime
			sum += primes[i]
			i += 1
		end

		if sum == prime
			puts "#{prime} => #{i - offset}"
			if i - offset > size
				size = i - offset
				largest_sum = sum
			end
		end

		offset += 1
	end
end

p largest_sum
p size
