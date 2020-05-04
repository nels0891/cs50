puts "Input number: "

num = gets.chomp()

while num.match(/\D/) 		# This line assesses for any non-digit in num and, if found, re-prompts.
	puts "Input number: "
	num = gets.chomp()
end

split_number = num.split(//)

odd_numbers = split_number.select.each_with_index { |_, i| i.even? }
even_numbers = split_number.select.each_with_index { |_, i| i.odd? }

odd_ints = odd_numbers.map { |value| value.to_i * 2 }

even_ints = even_numbers.map { |value| value.to_i }

concatenated_odds = odd_ints.map { |value| value.digits }.flatten

sum_of_odds = 0
concatenated_odds.map { |value| sum_of_odds += value }

sum_of_evens = 0
even_ints.map { |value| sum_of_evens += value }

total_num = sum_of_evens + sum_of_odds

if total_num % 10 == 0
	if num.match(/\A3(7|4)/) 
		puts "AMEX"
	elsif num.match(/\A4/)
		puts "VISA"
	elsif num.match(/\A5[1..5]/)
		puts "MASTERCARD"
	else 
		puts "INVALID"
	end
else 
	puts "INVALID"
end

# if (total_num / 10 == 0) || !(total_num % 10 == 0)
# 	puts "INVALID"
# # elseif
# end



## Output should be AMEX, MASTERCARD, VISA, or INVALID

## Sample:
# 4003600000000014
# Multiply the odd digits of the array - 1st, 3rd, 5th, etc. by 2
# Seperate out all digits of the output - 2, 0, 0, 0, 0, 12, 0, 8 becomes 2, 0, 0, 0, 0, 1, 2, 0, 8
# Add those digits together - 2 + 0 + 0 + 0 + 0 + 1 + 2 + 0 + 8 = 13
# Add the result (13) with the even digits of the array - 2nd, 4th, 6th, etc
# Sum should be divisible by ten. So (value / 10) % 0

# All AMEX cards start with 34 or 37
# Mastercards start with 51, 52, 53, 54, or 55
# Visas start with a 4. 

# Valid or invalid should be answered first. If it doesn't fit the Luhn's 
# algorithm then it doesn't matter what it starts with, it fails. 