require 'token_generator'

describe TokenGenerator do
	before :each do
		@color = :blue
		@number = 2
		@token = TokenGenerator.build_token(@color, @number)
	end

	describe ".build_token" do
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

	describe ".new_bag" do
		before :all do
			@token_bag = TokenGenerator.new_bag
			@colors = @token_bag.collect { |token| token.color }.uniq
			@numbers = @token_bag.collect { |token| token.number }.uniq
		end

		it "contains tokens of all legal colors" do
			@colors == TokenGenerator.colors
		end

		it "contains tokens of all legal numbers" do
			@numbers == TokenGenerator.numbers
		end

		it "contains two of each token" do
			@token_bag.size == @token_bag.uniq.size * 2
		end
	end
end