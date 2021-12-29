puts 'Welcome to Birthday Searcher! Please enter a name to search'
user_search = gets.chomp

org_bday = {}
File.open("Chap12Birthdays.txt") do |fp|
	fp.each do |line|
		key, value = line.chomp.split(", ", 2)
		org_bday[key] = value
	end
end

if "#{org_bday[user_search.to_s]}" == '' || nil
	puts 'I\'m sorry, that person is not currently in your database.'
	exit
end

birth_year = "#{org_bday[user_search.to_s].split(", ", 2)[1]}".to_i
birth_day = "#{org_bday[user_search.to_s].split(", ", 2)[0]}"
timestamp = Time.now.year
current_age = timestamp - birth_year

puts
puts user_search + '\'s birthday is on ' + birth_day.to_s +
'. They will be ' + (current_age + 1).to_s + ' on their next birthday!!'







