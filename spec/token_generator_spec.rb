require 'token_generator'

describe TokenGenerator do
	before :each do
		@color = :blue
		@number = 2
		@token = TokenGenerator.build_token(@color, @number)
	end


	describe "color" do
		it "responds to #color" do
			expect(@token.color).to eq(@color)
		end
	end

	describe "number" do
		it "responds to #number" do
			expect(@token.number).to eq(@number)
		end
	end
end