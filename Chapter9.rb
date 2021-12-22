#improved ask method(no clue what exercise is asking)
# def ask question
# 	while true
# 		puts question
# 		surv_ans = []
# 		reply = gets.chomp.downcase

# 		if(reply == 'yes' || reply == 'no')
			
# 			break
# 		else
# 			puts 'Please answer Yes or No'
# 		end
# 	end
# end

# ask 'Do you like this'				
# ask 'What about this'
# ask 'And this?'

#old school Roman Numerals

def convert user_entry
	while true
		num_M = user_entry/1000
		m_remain = user_entry%1000
		num_D = m_remain/500
		d_remain = m_remain%500
		num_C = d_remain/100
		c_remain = d_remain%100
		num_L = c_remain/50
		l_remain = c_remain%50
		num_X = l_remain/10
		x_remain = l_remain%10
		num_V = x_remain/5
		v_remain = x_remain%5
		num_I = v_remain/1
		puts 'M'*num_M + 'D'*num_D + 'C'*num_C + 'L'*num_L + 'X'*num_X + 'V'*num_V + 'I'*num_I
		break
	end
end

class String
	def numeric?
		Float(self) != nil rescue false
	end
end

puts 'Enter a number from 1 to 5000 to convert to Old-School Roman Numerals'
while true
	user_entry = gets.chomp
	if user_entry.to_i > 5000 || user_entry.numeric? == false
		puts 'Please enter a valid number between 1 and 5000'
	elsif user_entry.length > 0
		user_entry = user_entry.to_i
		convert user_entry
	else
		break
	end
end
