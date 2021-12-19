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

#angry boss
puts 'Hey, what\'s the matter?! Your productivity has been terrible!!!'
user_reply = gets.chomp
puts 'WHADDYA MEAN "' + userReply.capitalize + '"?!?! YOUR\'RE FIRED'

#table of contents
line_width = 50
chap_one = 'Chapter 1:'
chap_two = 'Chapter 2:'
chap_three = 'Chapter 3:'
chap_one_title = 'Getting Started'
chap_two_title = 'Numbers'
chap_three_title = 'Letters'
chap_one_pg = 'page  1'
chap_two_pg = 'page  9'
chap_three_pg = 'page 13'
title = 'Table of Contents'
puts(title.center(line_width))
puts 
puts(chap_one.ljust(line_width/3)+chap_one_title.ljust(line_width/3)+chap_one_pg.rjust(line_width/3))
puts(chap_two.ljust(line_width/3)+chap_two_title.ljust(line_width/3)+chap_two_pg.rjust(line_width/3))
puts(chap_three.ljust(line_width/3)+chap_three_title.ljust(line_width/3)+chap_three_pg.rjust(line_width/3))




