class TokenGenerator
	@@colors = [:red, :blue, :yellow, :green]
	@@numbers = (1..12)

	def self.build_token color, number
		token = Struct.new :color, :number
		token.new(color, number)
	end

	def self.new_bag
		## TODO: build bag with all permutations of @@colors & @@numbers x2
		bag = []
		@@colors.each do |color|
			@@numbers.each do |number|
				2.times { bag << TokenGenerator.build_token(color, number) }
			end
		end
		bag
	end

	def self.colors
		@@colors
	end

	def self.numbers
		@@numbers
	end

end