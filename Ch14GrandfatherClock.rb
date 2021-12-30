def ring_chime &block
	time_now = Time.new.hour
	if time_now > 12
		time_now = time_now%12
	end
	while time_now > 0
		block.call
		time_now -= 1
	end
end

ring_chime do 
	puts 'DONG!'
	end

# ring_chime