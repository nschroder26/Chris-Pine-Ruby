def prog_logger block_desc, &block
	puts "Beginning#{block_desc}"
	block.call
end

prog_logger ' "outer block"...' do
	prog_logger '"small block"...' do
		some_number = rand(7)
		puts '..."small block" finished, returning:'"	#{some_number}"
	end
	prog_logger '"another small block"...' do
		output = 'this is the last chapter'
		puts '..."small block" finished, returning:'"	#{output}"
	end
	a = false
	puts '..."outer block" finished, returning:'"	#{a}"
end
