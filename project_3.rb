p "Find largest prime of:"
input = gets.split("\n")[0].to_i

target = input
current_factor = 2
final_factor = 0

until target == 1
	if target % current_factor == 0
		target = target / current_factor
		final_factor = current_factor
		current_factor = 2
	else
		current_factor += 1
	end
end

p "Largest factorization is #{final_factor}"