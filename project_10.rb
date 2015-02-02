def fetch_primes_to(n)
	non_primes = []
	(2..Math.sqrt(n)).each do |i|
		(i**2..n).step(i){|x| non_primes << x }
	end
	[*2..n] - non_primes
end


limit = 2000000

p fetch_primes_to(limit).inject{|x, sum| sum + x}