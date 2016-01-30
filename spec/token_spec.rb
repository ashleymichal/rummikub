require 'token'

describe Token do
	before :each do
		@token = Token.new(:color => :red, :number => 1)
	end


	describe "color" do
		it "responds to #color" do
			expect(@token.color).to eq(:red)
		end
	end

	describe "number" do
		it "responds to #number" do
			expect(@token.number).to eq(1)
		end
	end
end