#99 bottles of beer. only runs to 95, adjust line 3 and 8 to desired length
num_beer = 99
while num_beer > 95
	puts num_beer.to_s + ' bottles of beer on the wall, ' + num_beer.to_s + 
	' bottles of beer! Take one down, pass it around! ' + num_beer.to_s + 
	' bottles of beer!!'
	num_beer = num_beer - 1
	if num_beer <= 95
		break
	end
end

#deaf grandma
said_bye = 0
while said_bye < 3
	puts 'Say something to Grandma'
	user_input = gets.chomp
		if user_input == 'BYE' && said_bye == 2
			puts 'GOODBYE SWEETIE'
			break
		elsif user_input == 'BYE' && said_bye == 0
			said_bye = said_bye + 1
			puts 'OH DON\'T BE SILLY, DEAR'
		elsif user_input == 'BYE' && said_bye == 1
			said_bye = said_bye + 1
			puts 'I SUPPOSE IT IS GETTING LATE ISN\'T IT?'
		elsif user_input == user_input.upcase
			puts 'NO! NOT SINCE ' + ((1930 + rand(30)).to_s)
			said_bye = 0
		else
			puts 'HUH?! SPEAK UP SONNY'
			said_bye = 0
		end
end

#leap years
puts 'Enter a starting year'
starting_year = gets.chomp
puts 'Enter an ending year'
ending_year = gets.chomp
c_year = starting_year.to_i
while c_year <= ending_year.to_i
	if  c_year%100 == 0 && c_year%400 == 0
		puts c_year
		c_year += 1
	elsif c_year%100 == 0
		c_year += 1
	elsif c_year%4 == 0
		puts c_year
		c_year += 1
	else
		c_year += 1
	end
end






