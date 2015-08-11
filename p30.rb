p (0..Float::INFINITY).lazy.select { |x|
	x.to_s.each_char.map {|m| m.to_i**5 }.reduce(:+) == x
}
	.drop_while { |i| i <= 1 }
	.first(6)
	.reduce(:+)
