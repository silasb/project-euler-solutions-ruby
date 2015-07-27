
def palindrome?(x)
	x.to_s.reverse == x.to_s
end

largest = 0

(100..999).each do |x|
	(100..999).each do |x2|
		if palindrome?(x * x2)
			if x * x2 > largest
				largest = x * x2
			end
		end
	end
end

p largest
