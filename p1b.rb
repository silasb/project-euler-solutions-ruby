puts (0...1000).inject(0) { |r, a|
	r += a if a % 5 == 0 or a % 3 == 0
	r
}
