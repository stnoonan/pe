#The following iterative sequence is defined for the set of positive integers: n ￼ n/2 (n is even)
#n ￼ 3n + 1 (n is odd)
#Using the rule above and starting with 13, we generate the following sequence:
#13 40 20 10 5 16 8 4 2 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#Which starting number, under one million, produces the longest chain? NOTE: Once the chain starts the terms are allowed to go above one million.

class Collatz
	def initialize
		@collatz_size_stash = {}
		@collatz_stash = {}
	end
	def collatz(n)
		return [1] if n == 1
		return @collatz_stash[n] if @collatz_stash.include?(n)
		return @collatz_stash[n] = if n % 2 == 0
			[n, collatz(n/2)].flatten
		else
			[n, collatz(3*n + 1)].flatten
		end
	end
	def collatz_size(n)
		return 1 if n == 1
		return @collatz_size_stash[n] if @collatz_size_stash.include?(n)
		return @collatz_size_stash[n] = if n % 2 == 0
			1 + collatz_size(n/2)
		else
			1 + collatz_size(3*n + 1)
		end
	end

	def cache_size
		@collatz_size_stash.size
	end
end

maxsz = 0
max = 0
c = Collatz.new
Range.new(1,999999).each do |n|
	if (sz = c.collatz_size(n)) > maxsz
		maxsz = sz
		max = n
	end
end

puts "Starting number with longest chain(#{maxsz}): #{max}"
puts "Unique sizes: #{c.cache_size}"
