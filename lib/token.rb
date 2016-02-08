class Token
	attr_accessor :color, :number

	def initialize tile_values
		@color = tile_values[:color]
		@number = tile_values[:number]
	end
end