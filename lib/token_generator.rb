require 'token'

class TokenGenerator
	def self.build_token token_options
		Token.new(token_options)
	end
end