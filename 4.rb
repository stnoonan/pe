#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 ￼ 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome? (a)
	s = a.to_s
	s == s.reverse
end

pals = []
999.downto(100) do |first|
	first.downto(100) do |second|
		num = first * second
		if palindrome?(num)
			pals << num
			break
		end
	end
end
puts pals.max
