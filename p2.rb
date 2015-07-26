a = []
a[0] = 0
a[1] = 1

loop.each_with_index do |_, i|
	if a[i] < 4_000_000
		i += 2; a[i] = a[i-2] + a[i-1]
	else
		break
	end
end

a.select! { |a| a % 2 == 0 }

puts a.inject(&:+)
