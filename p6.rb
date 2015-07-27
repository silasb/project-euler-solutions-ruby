number = 100

sum_of_squares = (1..number).to_a.inject { |r, n|
	r += n * n
	r
}

square_of_sums = (1..number).to_a.inject { |r, n|
	r += n
	r
} ** 2

p square_of_sums - sum_of_squares 
