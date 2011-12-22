#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
max=600851475143;
factors=[];
(3..600851475143).step(2).map do |n|
	break if n > max
	if 600851475143 % n == 0
		factors << n
		max = (600851475143 / n)
		factors << max
	end
end
prime=[]
factors.sort.map do |n|
	Range.new(3,n).step(2).map do |m|
		if n % m == 0
			prime << n if n == m
			break
		end
	end
end

p prime.max
