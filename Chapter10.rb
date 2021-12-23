#list sorting no recursion
entered_list = ['people', 'tree', 'tree', 'snow', 'cold', 'cookies',
				'gifts']
def word_sort list
	sorted_list = []
	unsorted_list = []
	puts list.length
	while list.length>0
		word_one = list.pop
		word_two = list.pop
		if word_two == nil
			sorted_list.push word_one
			list = unsorted_list
			unsorted_list =[]
			# puts '-----'
			# puts list
			# puts '-----'
			# puts list.length
			# break
		elsif word_one < word_two
			# puts word_one+' word one'
			# puts word_two+' word two'
			unsorted_list.push word_two
			list.push word_one
		elsif word_one == word_two
			list.push word_two
		else
			# puts word_one+' word one'
			# puts word_two+' word two'
			unsorted_list.push word_one
			list.push word_two
		end
	end
	puts sorted_list
end

word_sort entered_list