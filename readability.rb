input_text = gets.chomp

letter_total = input_text.count "A-z" # Counts all letters A-z, upper and lower case. Does not include punctuation.
word_total = input_text.split(' ').size # Splits the string by spaces then counts the number of elements.
sentence_total = input_text.count ".!?" # Counts all sentence ending punctuation

L_value = letter_total.to_f / word_total.to_f * 100
S_value = sentence_total.to_f / word_total.to_f * 100

grade_level = (0.0588 * L_value - 0.296 * S_value - 15.8).round

if grade_level <= 1
	puts "Before Grade 1"
elsif grade_level >= 16
	puts "Grade 16+"
else 
	puts "Grade #{grade_level}"
end