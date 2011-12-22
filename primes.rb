require 'generator'

primes = Generator.new do |blck|
	current_primes = []
	test_number = 2
	while true
		prime = true
		sqrt_test_number = (test_number ** (0.5)).ceil
		current_primes.map do |test_prime|
			if test_prime > sqrt_test_number
				break
			end
			if test_number % test_prime == 0
				prime = false
				break
			end
		end
		if prime
			current_primes << test_number
			blck.yield test_number
		end
		test_number += 1
	end
end

for i in 1..10001
	puts primes.next
end
