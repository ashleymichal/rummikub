class TokenGenerator
	def self.build_token color, number
		token = Struct.new :color, :number
		token.new(color, number)
	end
end