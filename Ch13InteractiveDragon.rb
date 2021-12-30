class Dragon
	def initialize named
		@name = named
		@asleep = false
		@belly = 10
		@intestine = 0
		puts "#{@name} is born."
	end
	def walk
		@asleep = false
		if @intestine > 5
			@intestine = 0
			@belly -= 1
			puts "You go for a walk with #{@name} and they go to the bathroom"
			pass_time
		else
			@belly -= 2
			puts "#{@name} didn\'t have to use the bathroom, but still enjoyed chasing all the squirrels"
			pass_time
		end
	end
	def feed
		@asleep = false
		if @belly > 5
			puts "#{@name} isn\'t really hungry right now, and they are trying to watch their figure!"
			pass_time
		else
			@belly = 10
			puts "#{@name} was hungry and gobbled up that T-bone steak"
			pass_time
		end
	end
	def rock
		puts "You slowly rock #{@name} and they doze off"
		@asleep = true
		pass_time
		if @asleep
			@asleep = false
			puts '.... but they wake as soon as you stop rocking'
		end
	end
	def toss
		puts "You toss #{@name} high into the air which makes them giggle. This also singes your eyebrows...."
		pass_time
	end
	def hungry?
		@belly <= 2
	end
	def poddy?
		@intestine >=8
	end
	def pass_time
		if @belly > 0
			@belly -= 2
			@intestine += 2
		else
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name} got tired of waiting and ate you. Better luck next time!"
			exit
		end
		if @intestine >= 10
			@intestine = 0
			puts "#{@name} had an accident!"
		end
		if hungry?
			puts "#{@name}\'s tummy rumbles loudly. You might want to do something about that....."
		end
		if poddy?
			puts "#{@name} is doing the potty dance"
		end

	end

end

player_eaten = false
dragon_created = false

while not dragon_created
	puts 'Enter a name for your baby dragon'
	@name = gets.chomp
	pet = Dragon.new "#{@name}"
	dragon_created = true
end

while dragon_created
	if not player_eaten
		puts "What do you want to do with #{@name}? You can walk, feed, toss, or rock #{@name}."
		user_action = gets.chomp.downcase
		if user_action == 'walk'
			pet.walk
		elsif user_action == 'feed'
			pet.feed
		elsif user_action == 'toss'
			pet.toss
		elsif user_action == 'rock'
			pet.rock
		else
			puts 'Please enter a valid activity such as walk, feed, toss, or rock'
		end
	end
end







