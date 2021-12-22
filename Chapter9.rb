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

# def convert user_entry
# 	while true
# 		num_M = user_entry/1000
# 		m_remain = user_entry%1000
# 		num_D = m_remain/500
# 		d_remain = m_remain%500
# 		num_C = d_remain/100
# 		c_remain = d_remain%100
# 		num_L = c_remain/50
# 		l_remain = c_remain%50
# 		num_X = l_remain/10
# 		x_remain = l_remain%10
# 		num_V = x_remain/5
# 		v_remain = x_remain%5
# 		num_I = v_remain/1
# 		puts 'M'*num_M + 'D'*num_D + 'C'*num_C + 'L'*num_L + 'X'*num_X + 'V'*num_V + 'I'*num_I
# 		break
# 	end
# end

# class String
# 	def numeric?
# 		Float(self) != nil rescue false
# 	end
# end

# puts 'Enter a number from 1 to 5000 to convert to Old-School Roman Numerals'
# while true
# 	user_entry = gets.chomp
# 	if user_entry.to_i > 5000 || user_entry.numeric? == false
# 		puts 'Please enter a valid number between 1 and 5000'
# 	elsif user_entry.length > 0
# 		user_entry = user_entry.to_i
# 		convert user_entry
# 	else
# 		break
# 	end
# end

#modern Roman numerals
def convert user_entry
	while true
		num_CM = 0
		num_CD = 0
		num_XC = 0
		num_XL = 0
		num_IX = 0
		num_IV = 0
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
		if num_C == 4 #converts CCCC to CD
			num_CD += 1
			num_C -= 4
		end
		if num_D == 1 && num_CD == 1 #converts DCCCC to CM
			num_CM += 1
			num_D -= 1
			num_CD -= 1
		end
		if num_X == 4 #converts XXXX to XL
			num_XL += 1
			num_X -= 4
		end
		if num_L == 1 && num_XL == 1 #converts LXL to XC
			num_XC += 1
			num_XL -= 1
			num_L -= 1
		end
		if num_I == 4 #converts IIII to IV
			num_IV += 1
			num_I -= 4
		end
		if num_V == 1 && num_IV == 1 #converts VIV to IX
			num_IX += 1
			num_V -= 1
			num_IV -= 1
		end
		puts 'M'*num_M + 'CM'*num_CM + 'D'*num_D + 'CD'*num_CD + 'C'*num_C + 
			'XC'*num_XC + 'L'*num_L + 'XL'*num_XL + 'X'*num_X + 'IX'*num_IX + 
			'V'*num_V + 'IV'*num_IV + 'I'*num_I
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
	if user_entry.length == 0
		break
	elsif user_entry.to_i > 5000 || user_entry.numeric? == false
		puts 'Please enter a valid number between 1 and 5000'
	else
		user_entry = user_entry.to_i
		convert user_entry
	end
end
