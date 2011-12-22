#A Pythagorean triplet is a set of three natural numbers, a ￼ b ￼ c, for which, a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

def triple? (a,b)
	csq = a**2 + b**2
	csq_sqrt = Math.sqrt(csq).to_i
	return [a,b,csq_sqrt] if (csq_sqrt * csq_sqrt == csq)
	nil
end

(1..1000).map do |a|
	(1..1000).map do |b|
		if tr = triple?(a,b)
			p tr
			if (tr.inject(:+) == 1000)
				puts tr.inject(:*)
				exit
			end
		end
	end
end
