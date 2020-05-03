puts "Input number: "

num = gets.chomp()

puts "The #{num} is the card number."

new_num = num.split(//)

print "#{new_num} are the split values."
puts

odds_nums = new_num.select.each_with_index { |_, i| i.even? }
even_nums = new_num.select.each_with_index { |_, i| i.odd? }

print "#{odds_nums} are the odd numbers."
puts
print "#{even_nums} are the even numbers."
puts




# odds_nums.to_i()
# even_nums.to_i()

# print odds_nums
# puts
# print even_nums
# puts

## Output should be AMEX, MASTERCARD, VISA, or INVALID

## Sample:
# 4003600000000014
# Multiply the odd digits of the array - 1st, 3rd, 5th, etc.
# Seperate out all digits of the output - 2, 0, 0, 0, 0, 12, 0, 8 becomes 2, 0, 0, 0, 0, 1, 2, 0, 8
# Add those digits together - 2 + 0 + 0 + 0 + 0 + 1 + 2 + 0 + 8 = 13
# Add the result (13) with the even digits of the array - 2nd, 4th, 6th, etc
# Sum should be divisible by ten. So (value / 10) % 0

# All AMEX cards start with 34 or 37
# Mastercards start with 51, 52, 53, 54, or 55
# Visas start with a 4. 

# Valid or invalid should be answered first. If it doesn't fit the Luhn's 
# algorithm then it doesn't matter what it starts with, it fails. 