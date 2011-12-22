#The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ... Let us list the divisors of the first seven triangle numbers:
#1: 1
#3: 1,3
#6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28
#We can see that 28 is the first triangle number to have over five divisors.
#What is the value of the first triangle number to have over five hundred divisors?
#


require 'set'
def divisor(m)
	divisors=Set.new();
	max = m
	Range.new(1,m).map do |n|
		break if n > max
		if m % n == 0
			divisors << n
			max = (m / n)
			divisors << max
		end
	end
	divisors#.to_a.sort
end

require 'generator'
triangles = Generator.new do |blck|
	t = 0
	i = 1
	while true
		t += i
		blck.yield t
		i += 1
	end
end

while true do
	tri_num = triangles.next
	divisors = divisor(tri_num)
	#p "#{tri_num}: #{divisors.inspect()}"
	#puts divisors.size
	if divisors.size > 500
		puts tri_num
		break
	end
end

