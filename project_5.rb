input = gets.split("\n").first.to_i
index = input
curr_lcd = input
sum = 0

def lcd(adj_int, index)
	lcm = 0

	if adj_int > 0
		adj_int.times do |j|
			current_lcm = (j + 1) * index
			if(current_lcm) % adj_int == 0
				lcm = current_lcm
				break
			end
		end
	end

	lcm
end

while index > 0
	adj_int = index - 1
	if adj_int > 0
		curr_lcd = lcd(adj_int, curr_lcd)
	end


	index -= 1
end

p curr_lcd
