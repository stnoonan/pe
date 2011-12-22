#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. What is the 10 001st prime number?
#

def prime?(n, primes)
	if primes
		sn = (n ** (0.5)).ceil
		testrange = primes
		testrange.map do |m|
			return true if m > sn
			return false if n % m == 0
		end
		return true
	end
	return true if n == 2
	testrange = Range.new(3,n).step(2)
	testrange.map do |m|
		if n % m == 0
			return true if n == m
			break
		end
	end
	false
end

prime_count = 0
primes = []
i = 2
while prime_count < 10001 do
	if prime?(i, primes)
		prime_count+=1
		primes << i
		#p "#{prime_count}:#{i}"
	end
	i+=1
end
puts (i-1)
	
	
