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
entered_list = ['people', 'tree', 'tree', 'snow', 'cold', 'cookies',
				'gifts']
def shuffle_wrapper any_array
	shuffle_array any_array, []
end

def shuffle_array entered_array, shuffled_array
	if entered_array.length == 0
		shuffled_array.reject!{|e| e.to_s.empty?}
		puts shuffled_array
		exit!
	else
		shuffled_word = entered_array.pop
		shuffled_array.insert(rand(entered_array.length+shuffled_array.length), shuffled_word)
	end
	shuffle_array entered_array, shuffled_array
end

shuffle_wrapper entered_list










