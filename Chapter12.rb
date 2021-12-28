#birthday + 1bil seconds
# my_birthday = Time.local(1992, 4, 4, 16, 24)
# puts my_birthday + 1000000000


#Birthday spanks
# puts 'Hello there, what year were you born in?'
# birth_year = gets.chomp
# puts 'Thanks, what month were you for in?'
# birth_month = gets.chomp
# puts 'Awesome, and what day were you born on?'
# birth_day = gets.chomp

# current_time = Time.new
# user_birthday = Time.local(birth_year, birth_month, birth_day)
# num_spanks = (current_time - user_birthday)/31536000

# puts "Spank!\n"*num_spanks


#Roman numeral to numbers
puts 'Please enter a Roman Numeral to convert'
user_entry = gets.chomp.upcase
entry_array = []
user_len = 0

#moves user_entry into array
while user_entry.length > user_len
	entry_array.push user_entry[user_len]
	user_len += 1
end

#converts last object in array to int,
# + or - based on last object evaluated
converted_num = 0
last_value = 0
while entry_array.length>0
	current_value = entry_array.pop
	if current_value == 'I'
		current_value = 1
			if current_value >= last_value
				converted_num += 1
			else
				converted_num -= 1
			end
		last_value = 1
	elsif current_value == 'X'
		current_value = 10
			if current_value >= last_value
				converted_num += 10
			else
				converted_num -= 10
			end
		last_value = 10
	elsif current_value == 'L'
		current_value = 50
			if current_value >= last_value
				converted_num += 50
			else
				converted_num -= 50
			end
		last_value = 50
	elsif current_value == 'C'
		current_value = 100
			if current_value >= last_value
				converted_num += 100
			else
				converted_num -= 100
			end
		last_value = 100
	elsif current_value == 'D'
		current_value = 500
			if current_value >= last_value
				converted_num += 500
			else
				converted_num -= 500
			end
		last_value = 500
	elsif current_value == 'M'
		current_value = 1000
			if current_value >= last_value
				converted_num += 1000
			else
				converted_num -= 1000
			end
		last_value = 1000
	else
		puts 'Please enter a valid Roman Numeral'
		exit
	end
end

puts converted_num










