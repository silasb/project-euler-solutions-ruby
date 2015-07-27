
def palindrome?(s)
	s.to_s.reverse == s.to_s
end

number = 1_000_000

p (0...number).select { |n|
	palindrome?(n) and palindrome?(n.to_s(2))
}.reduce(:+)
