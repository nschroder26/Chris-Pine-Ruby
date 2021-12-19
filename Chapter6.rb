#number of char in name
puts 'Hey there! What is your first name?'
firstName = gets.chomp
puts 'Thanks ' + firstName + ', what\'s your middle name?'
middleName = gets.chomp
puts 'Finally, what is your last name?'
lastName = gets.chomp
nameLength = firstName.length+middleName.length+lastName.length
puts nameLength
puts 'Did you know that there are ' + nameLength.to_s + ' characters in your name?'
