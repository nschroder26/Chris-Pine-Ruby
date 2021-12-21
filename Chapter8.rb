#word sorter
# puts 'Enter as many words as you would like. When you want the list returned
# in alphabetical order press "ENTER" on an empty line'
# word_list = []
# run_prog = true
# while run_prog
# 	entered_word = gets.chomp
# 	if entered_word.length > 0
# 		word_list.push entered_word
# 	else
# 		puts word_list.sort
# 		break
# 	end
# end

#updated table of contents
toc = ['Table of Contents', 
	'Chapter 1:', 'Getting Started', 'page', '1',
	'Chapter 2:', 'Numbers', 'page', '9',
	'Chapter 3:', 'Letters', 'page', '13']
line_width = 40
puts(toc[0].center(line_width))
puts(toc[1].ljust(11)+toc[2].ljust(20)+toc[3].rjust(4)+toc[4].rjust(3))
puts(toc[5].ljust(11)+toc[6].ljust(20)+toc[7].rjust(4)+toc[8].rjust(3))
puts(toc[9].ljust(11)+toc[10].ljust(20)+toc[11].rjust(4)+toc[12].rjust(3))


