#Problem 17
#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
#

def write_number(n)
	case n
	when 1 then "one"
	when 2 then "two"
	when 3 then "three"
	when 4 then "four"
	when 5 then "five"
	when 6 then "six"
	when 7 then "seven"
	when 8 then "eight"
	when 9 then "nine"
	when 10 then "ten"
	when 11 then "eleven"
	when 12 then "twelve"
	when 13 then "thirteen"
	when 14 then "fourteen"
	when 15 then "fifteen"
	when 16 then "sixteen"
	when 17 then "seventeen"
	when 18 then "eighteen"
	when 19 then "nineteen"
	when 20 then "twenty"
	when 30 then "thirty"
	when 40 then "forty"
	when 50 then "fifty"
	when 60 then "sixty"
	when 70 then "seventy"
	when 80 then "eighty"
	when 90 then "ninety"
	when 100 then "hundred"
	when 1000 then "thousand"
	end
end
