a = []
a[0] = 0
a[1] = 1
a[2] = 1

loop.each_with_index do |_, i|
	#if a[i] < 4_000_000
	i += 3; a[i] = a[i-2] + a[i-1]
	if a[i].to_s.size == 1000
		p i
		break
	end
	#else
		#break
	#end
end

#a.select! { |a| a % 2 == 0 }

#puts a.inject(&:+)
