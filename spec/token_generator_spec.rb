require 'token_generator'

describe TokenGenerator do
	describe "#make token" do
		@color = :blue
		@number = 2
		
		it "generates a new Token object" do
			new_token = TokenGenerator.build_token(:color => @color, :number => @number)
			expect(new_token).to be_instance_of(Token)
		end
	end
end