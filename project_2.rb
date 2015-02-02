current = 1
last = 0

total = 0

1000.times do |i|
	if current % 2 == 0 && current > 0
		total += current
	end

	new_current = current + last
	last = current
	current = new_current
	break if current > 4000000
end

p total