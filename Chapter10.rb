#list sorting no recursion
# entered_list = ['people', 'tree', 'tree', 'snow', 'cold', 'cookies',
# 				'gifts']
# def word_sort list
# 	sorted_list = []
# 	unsorted_list = []
# 	puts list.length
# 	while list.length>0
# 		word_one = list.pop
# 		word_two = list.pop
# 		if word_two == nil
# 			sorted_list.push word_one
# 			list = unsorted_list
# 			unsorted_list =[]
# 		elsif word_one < word_two
# 			unsorted_list.push word_two
# 			list.push word_one
# 		elsif word_one == word_two
# 			list.push word_two
# 		else
# 			unsorted_list.push word_one
# 			list.push word_two
# 		end
# 	end
# 	puts sorted_list
# end

# word_sort entered_list

# word sorting with recursion (doesnt fully work, only returns first word)
# entered_list = ['people', 'tree', 'tree', 'snow', 'cold', 'cookies',
# 				'gifts']
# def sort_array some_array
# 	recursive_sort some_array, [], []
# end

# def recursive_sort unsorted_list, sorted_list, checked_list
# 	# puts '-US-'
# 	# puts unsorted_list
# 	# puts '--'
# 	# puts '-CL-'
# 	# puts checked_list
# 	# puts '--'
# 	if unsorted_list.length > 0
# 		word_one = unsorted_list.pop
# 		word_two = unsorted_list.pop
# 		# puts word_one
# 		# puts word_two
# 		# puts
# 		if word_two == nil
# 			sorted_list.push word_one
# 		elsif word_two < word_one
# 			checked_list.push word_one
# 			unsorted_list.push word_two
# 		elsif word_one == word_two
# 			checked_list.push word_one
# 		elsif
# 			checked_list.push word_two
# 			unsorted_list.push word_one
# 		end
# 		recursive_sort unsorted_list, [], []
# 	end
# 	puts sorted_list
# 	# puts 
# 	# puts checked_list
# end

# sort_array entered_list


#word sort using recursion, this version fully works
# entered_list = ['people', 'tree', 'tree', 'snow', 'cold', 'cookies',
# 				'gifts']
# def sort_array some_array
# 	recursive_sort some_array, [], []
# end

# def recursive_sort unsorted_list, sorted_list, checked_list
# 	if unsorted_list.length == 0
# 		puts sorted_list
# 		exit!
# 	end
# 	word_one = unsorted_list.pop
# 	word_two = unsorted_list.pop
# 	if word_two == nil
# 		sorted_list.push word_one
# 		unsorted_list = checked_list
# 		checked_list = []
# 	elsif word_two < word_one
# 		unsorted_list.push word_two
# 		checked_list.push word_one
# 	elsif word_one == word_two
# 		unsorted_list.push word_one
# 	elsif word_one < word_two
# 		unsorted_list.push word_one
# 		checked_list.push word_two
# 	end
# 	recursive_sort unsorted_list, sorted_list, checked_list
# end

# sort_array entered_list


#array shuffler
# entered_list = ['people', 'tree', 'tree', 'snow', 'cold', 'cookies',
# 				'gifts']
# def shuffle_wrapper any_array
# 	shuffle_array any_array, []
# end

# def shuffle_array entered_array, shuffled_array
# 	if entered_array.length == 0
# 		shuffled_array.reject!{|e| e.to_s.empty?}
# 		puts shuffled_array
# 		exit!
# 	else
# 		shuffled_word = entered_array.pop
# 		shuffled_array.insert(rand(entered_array.length+shuffled_array.length), shuffled_word)
# 	end
# 	shuffle_array entered_array, shuffled_array
# end

# shuffle_wrapper entered_list

#dictionary word sorting
# entered_list = ['people', 'tree', 'tree', 'Snow', 'cold', 'cookies',
# 				'Gifts', 'ice', 'ice']
# def sort_array some_array
# 	recursive_sort some_array, [], []
# end

# def recursive_sort unsorted_list, sorted_list, checked_list
# 	if unsorted_list.length == 0
# 		puts sorted_list
# 		exit!
# 	end
# 	word_one = unsorted_list.pop
# 	word_two = unsorted_list.pop
# 	word_one_cap = false
# 	word_two_cap = false
# 	if word_one == word_one.capitalize
# 		word_one_cap = true
# 		word_one = word_one.downcase
# 	end
# 	if word_two != nil && word_two == word_two.capitalize
# 		word_two_cap = true
# 		word_two = word_two.downcase
# 	end
# 	if word_two == nil
# 		if word_one_cap
# 			word_one = word_one.capitalize
# 			sorted_list.push word_one
# 			word_one_cap = false
# 			unsorted_list = checked_list
# 			checked_list = []
# 		else
# 			sorted_list.push word_one
# 			unsorted_list = checked_list
# 			checked_list = []
# 		end
# 	elsif word_two < word_one
# 		if word_one_cap && word_two_cap
# 			word_one = word_one.capitalize
# 			word_two = word_two.capitalize
# 			unsorted_list.push word_two
# 			word_one_cap = false
# 			word_two_cap = false
# 			checked_list.push word_one
# 		elsif word_one_cap
# 			word_one = word_one.capitalize
# 			unsorted_list.push word_two
# 			word_one_cap = false
# 			checked_list.push word_one
# 		elsif word_two_cap
# 			word_two = word_two.capitalize
# 			unsorted_list.push word_two
# 			word_two_cap = false
# 			checked_list.push word_one
# 		else
# 			unsorted_list.push word_two
# 			checked_list.push word_one
# 		end
# 	elsif word_one == word_two
# 		unsorted_list.push word_one
# 	elsif word_one < word_two
# 		if word_one_cap && word_two_cap
# 			word_one = word_one.capitalize
# 			word_two = word_two.capitalize
# 			unsorted_list.push word_one
# 			word_one_cap = false
# 			word_two_cap = false
# 			checked_list.push word_two
# 		elsif word_one_cap
# 			word_one = word_one.capitalize
# 			unsorted_list.push word_one
# 			word_one_cap = false
# 			checked_list.push word_two
# 		elsif word_two_cap
# 			word_two = word_two.capitalize
# 			unsorted_list.push word_one
# 			word_two_cap = false
# 			checked_list.push word_two
# 		else
# 			unsorted_list.push word_one
# 			checked_list.push word_two
# 		end
# 	end
# 	recursive_sort unsorted_list, sorted_list, checked_list
# end

# sort_array entered_list


#english numbers
# def english_number number
# 	if number < 0
# 		return 'Please enter a number that isn\'t negative.' 
# 	end
# 	if number == 0
# 		return 'zero'
# 	end
# 	num_string = ''

# 	ones_place = ['one', 'two', 'three', 'four', 'five',
# 					'six', 'seven', 'eight', 'nine']
# 	tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty',
# 					'sixty', 'seventy', 'eighty', 'ninety']
# 	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
# 					'sixteen', 'seventeen', 'eighteen', 'nineteen']

# 	left = number

# 	#trillions
# 	write = left/100000000000000
# 	left = left - write*100000000000000
# 	if write > 0
# 		hund_thousands = english_number write
# 		if left > 100000000000000
# 			num_string = num_string + hund_thousands + ' hundred trillion'
# 		elsif left < 1000000000000
# 			num_string = num_string + hund_thousands + ' hundred trillion'
# 		else	
# 			num_string = num_string + hund_thousands + ' hundred'
# 		end
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	write = left/10000000000000
# 	left = left - write*10000000000000
# 	if write > 0
# 		if ((write == 1) and (left > 1000000000000))
# 			num_string = num_string + teenagers[(left/1000000000000)-1] + ' trillion'
# 			left = left%1000000000000
# 		elsif left < 1000000000000
# 			num_string = num_string + tens_place[write-1] + ' trillion'
			
# 		else
# 			num_string = num_string + tens_place[write-1]
# 		end
# 		if left > 1000000000000
# 			num_string = num_string + '-'
# 		else
# 			num_string = num_string + ' '
# 		end 
# 	end

# 	write = left/1000000000000
# 	left = left - write*1000000000000
# 	if write > 0
# 		millions = english_number write
# 		num_string = num_string + millions + ' trillion'
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	#billions
# 	write = left/100000000000
# 	left = left - write*100000000000
# 	if write > 0
# 		hund_thousands = english_number write
# 		if left > 100000000000
# 			num_string = num_string + hund_thousands + ' hundred billion'
# 		elsif left < 1000000000
# 			num_string = num_string + hund_thousands + ' hundred billion'
# 		else	
# 			num_string = num_string + hund_thousands + ' hundred'
# 		end
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	write = left/10000000000
# 	left = left - write*10000000000
# 	if write > 0
# 		if ((write == 1) and (left > 1000000000))
# 			num_string = num_string + teenagers[(left/1000000000)-1] + ' billion'
# 			left = left%1000000000
# 		elsif left < 1000000000
# 			num_string = num_string + tens_place[write-1] + ' billion'
			
# 		else
# 			num_string = num_string + tens_place[write-1]
# 		end
# 		if left > 1000000000
# 			num_string = num_string + '-'
# 		else
# 			num_string = num_string + ' '
# 		end 
# 	end

# 	write = left/1000000000
# 	left = left - write*1000000000
# 	if write > 0
# 		millions = english_number write
# 		num_string = num_string + millions + ' billion'
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	#millions
# 	write = left/100000000
# 	left = left - write*100000000
# 	if write > 0
# 		hund_thousands = english_number write
# 		if left > 100000000
# 			num_string = num_string + hund_thousands + ' hundred million'
# 		elsif left < 1000000
# 			num_string = num_string + hund_thousands + ' hundred million'
# 		else	
# 			num_string = num_string + hund_thousands + ' hundred'
# 		end
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	write = left/10000000
# 	left = left - write*10000000
# 	if write > 0
# 		if ((write == 1) and (left > 1000000))
# 			num_string = num_string + teenagers[(left/1000000)-1] + ' million'
# 			left = left%1000000
# 		elsif left < 1000000
# 			num_string = num_string + tens_place[write-1] + ' million'
			
# 		else
# 			num_string = num_string + tens_place[write-1]
# 		end
# 		if left > 1000000
# 			num_string = num_string + '-'
# 		else
# 			num_string = num_string + ' '
# 		end 
# 	end

# 	write = left/1000000
# 	left = left - write*1000000
# 	if write > 0
# 		millions = english_number write
# 		num_string = num_string + millions + ' million'
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	#thousands
# 	write = left/100000
# 	left = left - write*100000
# 	if write > 0
# 		hund_thousands = english_number write
# 		if left > 100000
# 			num_string = num_string + hund_thousands + ' hundred thousand'
# 		elsif left < 1000
# 			num_string = num_string + hund_thousands + ' hundred thousand'
# 		else	
# 			num_string = num_string + hund_thousands + ' hundred'
# 		end
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	write = left/10000
# 	left = left - write*10000
# 	if write > 0
# 		if ((write == 1) and (left > 1000))
# 			num_string = num_string + teenagers[(left/1000)-1] + ' thousand'
# 			left = left%1000
# 		elsif left < 1000
# 			num_string = num_string + tens_place[write-1] + ' thousand'
			
# 		else
# 			num_string = num_string + tens_place[write-1]
# 		end
# 		if left > 1000
# 			num_string = num_string + '-'
# 		else
# 			num_string = num_string + ' '
# 		end 
# 	end

# 	write = left/1000
# 	left = left - write*1000
# 	if write > 0
# 		thousands = english_number write
# 		num_string = num_string + thousands + ' thousand'
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	#hundreds
# 	write = left/100
# 	left = left - write*100
# 	if write > 0
# 		hundreds = english_number write
# 		num_string = num_string + hundreds + ' hundred'
# 		if left > 0
# 			num_string = num_string +' '
# 		end
# 	end

# 	write = left/10
# 	left = left - write*10
# 	if write > 0
# 		if ((write == 1) and (left > 0))
# 			num_string = num_string + teenagers[left-1]
# 			left = 0
# 		else
# 			num_string = num_string + tens_place[write-1]
# 		end
# 		if left > 0
# 				num_string = num_string + '-'
# 		end 
# 	end
# 	write = left
# 	left = 0

# 	if write > 0
# 		num_string = num_string + ones_place[write-1]
# 	end
# 	num_string
# end


# # puts english_number(3211)
# # puts english_number(10012)
# # puts english_number(817009)
# puts english_number(756876100000870)


#wedding number
def wedding_number number
	if number < 0
		return 'Please enter a number that isn\'t negative.' 
	end
	if number == 0
		return 'zero'
	end
	num_string = ''

	ones_place = ['one', 'two', 'three', 'four', 'five',
					'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty',
					'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
					'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number

	#thousands
	write = left/100000
	left = left - write*100000
	if write > 0
		hund_thousands = wedding_number write
		if left > 100000
			num_string = num_string + hund_thousands + ' hundred thousand'
		elsif left < 1000
			num_string = num_string + hund_thousands + ' hundred thousand'
		else	
			num_string = num_string + hund_thousands + ' hundred'
		end
		if left > 0
			num_string = num_string +' '
		end
	end

	write = left/10000
	left = left - write*10000
	if write > 0
		if ((write == 1) and (left > 1000))
			num_string = num_string + teenagers[(left/1000)-1] + ' thousand'
			left = left%1000
		elsif left < 1000
			num_string = num_string + tens_place[write-1] + ' thousand'
			
		else
			num_string = num_string + tens_place[write-1]
		end
		if left > 1000
			num_string = num_string + '-'
		else
			num_string = num_string + ' '
		end 
	end

	write = left/1000
	left = left - write*1000
	if write > 0
		thousands = wedding_number write
		num_string = num_string + thousands + ' thousand'
		if left > 0
			num_string = num_string +' '
		end
	end

	#hundreds
	write = left/100
	left = left - write*100
	puts
	puts write
	puts left
	if write > 0 && left > 0
		hundreds = wedding_number write
		num_string = num_string + hundreds + ' hundred and '
	elsif write > 0
		hundreds = wedding_number write
		num_string = num_string + hundreds + ' hundred'
		if left > 0
			num_string = num_string +' '
		end
	end

	write = left/10
	left = left - write*10
	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end
		if left > 0
				num_string = num_string + '-'
		end 
	end
	write = left
	left = 0

	if write > 0
		num_string = num_string + ones_place[write-1]
	end
	num_string
end

puts wedding_number(1901)







