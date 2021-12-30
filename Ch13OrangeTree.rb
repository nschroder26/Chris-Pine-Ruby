class OrangeTree
	def initialize
		@height = 0
		has_fruit = false
		@age = 1
		@orange_count = 0
		puts 'A small orange tree sprouts out of the ground!'
	end
	def next_year
		@height += 2
		@age += 1
		puts 'Your tree has grown 1 year older!'
		@orange_count = 0
		if @age == 10
			puts 'Your tree has lived a long, fruitful life. THE END'
			exit!
		elsif @age >= 3
			puts 'Small blossoms have grown into Oranges!'
			@orange_count = 2 * @age
			has_fruit = true
		end
	end
	def pick_orange
		if @orange_count > 0
			puts "You\'ve picked an orange! It was the best tasting orange you\'ve ever had."
			@orange_count -= 1
		else
			puts 'There are no more oranges left to pick this year D:'
		end
	end
	def count_oranges
		puts "There are currently #{@orange_count} oranges on your tree. You should pick some!"
	end
	def cur_height
		puts "Your tree is currently #{@height} feet tall."
	end
end

tree = OrangeTree.new
tree.next_year
tree.next_year
tree.next_year
tree.next_year
tree.next_year
tree.next_year
tree.count_oranges
tree.pick_orange










