p_index = 998

final = nil

100.times do
	p_str = p_index.to_s
	p_str = p_str + p_str.reverse
	palendrome = p_str.to_i
	d_index = 999

	100.times do
		break if d_index == 0
		if palendrome % d_index == 0 && (palendrome / d_index).to_s.size == 3
			p d_index
			final = palendrome
			break
		else
			d_index -= 1
		end
	end

	break if final

	p_index -= 1
end

p final