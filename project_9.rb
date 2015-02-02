p "Enter perimeter of triangle:"
perimeter = gets.to_i

def is_perfect_square?(num)
	sqrt = Math::sqrt(num)
	num == sqrt.floor**2
end


i = 1

a = 0
b = 0
c = 0
term_index = 0
sequence = []

p "Pythagorean Triplets"
p "--------------------"

# a = (m ** 2) - (n ** 2)
# b = 2*m*n
# c = (m ** 2) + (n ** 2)

(perimeter/2).times do |m|
	m.times do |n|
		a = (m ** 2) - (n ** 2)
		b = 2*m*n
		c = (m ** 2) + (n ** 2)


		puts "#{a} #{b} #{c}, sum: #{a + b +c}"

		if a + b + c == perimeter
			puts "\n"
			puts "Answer Found: #{a} #{b} #{c}, sum: #{a + b +c}, product: #{a*b*c}"
			exit
		end
	end
end