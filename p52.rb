all_numbers = (1..Float::INFINITY).lazy.select do |n|
	n_array = n.to_s.each_char.to_a.sort

	n2 = n * 2
	if n_array & n2.to_s.each_char.to_a.sort != n_array
		next
	end

	n3 = n * 3
	if n_array & n3.to_s.each_char.to_a.sort != n_array
		next
	end

	n4 = n * 4
	if n_array & n4.to_s.each_char.to_a.sort != n_array
		next
	end

	n5 = n * 5
	if n_array & n5.to_s.each_char.to_a.sort != n_array
		next
	end

	n6 = n * 6
	if n_array & n6.to_s.each_char.to_a.sort != n_array
		next
	end

	n
end

p all_numbers.first(1)
