puts (0...1000).select { |a|
	a % 5 == 0 or a % 3 == 0
}.inject(&:+)
