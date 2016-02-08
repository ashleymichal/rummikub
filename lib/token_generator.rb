class TokenGenerator
	Colors = [:red, :blue, :yellow, :green]
	Numbers = (1..12)
	Combos = cominations
	
	Token = Struct.new :color, :number do
		private
			def color=(color)
			end
			def number=(number)
			end
	end

	def self.build_token color, number
		Token.new(color, number)
	end

	def self.new_bag
		## TODO: build bag with all permutations of Colors & Numbers x2
		bag = []
	end

	def self.colors
		Colors
	end

	def self.numbers
		Numbers
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