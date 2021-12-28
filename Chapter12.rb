#birthday + 1bil seconds
# my_birthday = Time.local(1992, 4, 4, 16, 24)
# puts my_birthday + 1000000000

#Birthday spanks
puts 'Hello there, what year were you born in?'
birth_year = gets.chomp
puts 'Thanks, what month were you for in?'
birth_month = gets.chomp
puts 'Awesome, and what day were you born on?'
birth_day = gets.chomp

current_time = Time.new
user_birthday = Time.local(birth_year, birth_month, birth_day)
num_spanks = (current_time - user_birthday)/31536000

puts "Spank!\n"*num_spanks