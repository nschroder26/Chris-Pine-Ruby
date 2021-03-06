Dir.chdir '/Users/macbookair/Desktop/Programs/Ruby/Chap 11 Resources/Moved Pics'

pic_names = Dir['/Users/macbookair/Desktop/Programs/Ruby/Chap 11 Resources/Original Pics/**/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print '.'

	new_name = if pic_number < 10
		batch_name + "0#{pic_number}.jpg"
	else
		batch_name + "#{pic_number}.jpg"
	end

	if File.exist?(new_name)
		puts
		puts 'File-name already exists, ending transfer.'
		exit!
	else
		File.rename name, new_name
		pic_number += 1
	end
end

puts
puts 'Done'