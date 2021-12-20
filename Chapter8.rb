#word sorter
puts 'Enter as many words as you would like. When you want the list returned
in alphabetical order press "ENTER" on an empty line'
word_list = []
run_prog = true
while run_prog
	entered_word = gets.chomp
	if entered_word.length > 0
		word_list.push entered_word
	else
		puts word_list.sort
		break
	end
end

