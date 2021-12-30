#extending classes

# class Array
# 	def shuffle
# 		entered_array = self
# 		shuffled_array = []

# 		while entered_array.length > 0
# 			rand_entry = rand(entered_array.length)
# 			starting_index = 0
# 			nonshuf_array = []

# 			entered_array.each do |entry|
# 				if starting_index == rand_entry
# 					shuffled_array.push entry
# 				else
# 					nonshuf_array.push entry
# 				end
# 				starting_index += 1
# 			end
# 			entered_array = nonshuf_array
# 		end
# 		shuffled_array
# 	end
# end

# puts [1,2,3,4,5,6].shuffle

# class Integer
# 	def factorial
# 		user_entry = self
# 		solution = user_entry
# 		if user_entry <1
# 			return 'Please enter a valid non-negative number'
# 		else
# 			if user_entry == 1
# 				return 1
# 			else
# 				while user_entry > 1
# 					solution = solution *(user_entry-1)
# 					user_entry -= 1
# 				end
# 				puts solution
# 			end
# 		end
# 	end
# end

# puts 6.factorial


# class Integer
# 	def to_roman
# 		user_entry = self
# 		roman_num = ''
# 		while user_entry > 0
# 			if user_entry >= 1000
# 				roman_num += 'M' * (user_entry/1000)
# 				user_entry = user_entry%1000
# 			elsif user_entry >= 500
# 				roman_num += 'D' * (user_entry/500)
# 				user_entry = user_entry%500
# 			elsif user_entry >= 100
# 				roman_num += 'C' * (user_entry/100)
# 				user_entry = user_entry%100
# 			elsif user_entry >= 50
# 				roman_num += 'L' * (user_entry/50)
# 				user_entry = user_entry%50
# 			elsif user_entry >= 10
# 				roman_num += 'X' * (user_entry/10)
# 				user_entry = user_entry%10
# 			elsif user_entry >= 5
# 				roman_num += 'V' * (user_entry/5)
# 				user_entry = user_entry%5
# 			elsif user_entry >= 1
# 				roman_num += 'I' * (user_entry/1)
# 				user_entry = user_entry%1
# 			else
# 				puts 'Please enter a valid number to convert'
# 				exit
# 			end
# 		end
# 		puts roman_num
# 	end
# end

# puts 12.to_roman
# puts 56.to_roman
# puts 134.to_roman
# puts 578.to_roman
# puts 1978.to_roman
			


#cheating dice

class Die
	def initialize
		roll
	end
	def roll
		@number_showing = 1 + rand(6)
	end
	def showing
		@number_showing
	end
	def cheat ent_num
		if ent_num > 6 || ent_num < 1
			puts 'That\'s not a valid dice value, silly.'
		else
			@number_showing = ent_num
		end
	end
end

puts Die.new.cheat 8








