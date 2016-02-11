class TokenGenerator
	COLORS = [:red, :blue, :yellow, :green]
	NUMBERS = (1..12)
	TOKEN = Struct.new :color, :number

	def self.build_token color, number
		TOKEN.new(color, number)
	end

	def self.new_bag
		## TODO: build bag with all permutations of COLORS & NUMBERS x2
		bag = []
		COLORS.each do |color|
			NUMBERS.each do |number|
				2.times { bag << TokenGenerator.build_token(color, number) }
			end
		end
		bag
	end

	def self.colors
		COLORS
	end

	def self.numbers
		NUMBERS
	end

	private

		def combinations
			Colors.each do |color|
				Numbers.each do |number|
					2.times { bag << TokenGenerator.build_token(color, number) }
				end
			end
		end

end