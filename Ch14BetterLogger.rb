def prog_logger block_desc, &block
	puts $indent + "Beginning#{block_desc}"
	block.call
end

$indent = ''

prog_logger ' "outer block"...' do
	$indent += '   '
	prog_logger ' "small block"...' do
		some_number = rand(7)
		puts $indent * 2 + '..."small block" finished, returning:'"	#{some_number}"
	end
	prog_logger '"another small block"...' do
		output = 'this is the last chapter'
		puts $indent * 2 + '..."small block" finished, returning:'"	#{output}"
	end
	a = false
	puts '..."outer block" finished, returning:'"	#{a}"
end
