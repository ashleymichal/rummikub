class TokenGenerator
	@@colors = [:red, :blue, :yellow, :green]
	@@numbers = (1..12)

	private

		def self.build_token color, number
			token = Struct.new :color, :number
			token.new(color, number)
		end

		def token_bag
			## TODO: build bag with all permutations of @@colors & @@numbers x2
		end
		
end