(1..Float::INFINITY).each do |n|
	a = (1..20).all? { |x| n % x == 0 } 

	if a
		p n
		break
	end
end
