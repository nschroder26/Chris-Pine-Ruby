#name request/return
# puts 'Hello there what\'s your first name?'
# firstName = gets.chomp
# puts 'Thanks ' + firstName + '. What\'s your middle name?'
# middleName = gets.chomp
# puts 'What\'s your last name?'
# lastName = gets.chomp
# puts 'Hi ' + firstName + ' ' + middleName + ' ' + lastName +', nice to meet you'

#better number
puts 'Hey there, what\'s your favorite number?'
favNum = gets.chomp.to_i
biggerNum = favNum + 1
puts 'I think ' + biggerNum.to_s + ' is better. They say bigger is better!'